git porcelain
fetchInternalFrom: aRemoteName
	| remote url fetchSpec packFile protocol remoteRefs wantRefs wantSignatures packFileData |
	remote := self unitOfWork remoteNamed: aRemoteName.
	url := remote url ifNil: [(GitRemoteUndefined remote: remote) signal: 'No URL configured.'].
	(self shouldHandleUrlExternally: url) ifTrue: [^ self fetchAllExternalFrom: aRemoteName].
	fetchSpec := remote fetchSpecs
		ifEmpty: [GitFetchSpec
					fromString: '+refs/heads/*:refs/remotes/', aRemoteName, '/*'
					forRemote: remote]
		ifNotEmpty: [:fetchSpecs | fetchSpecs first].
	self flag: #todo. "regard all fetch specs, not just the first one"
	protocol := GitAbstractProtocol url: url.
	protocol
		remote: remote;
		withOpenConnection:
			[remoteRefs := protocol refs.
			wantRefs := remoteRefs keys select: [:each | fetchSpec remoteRefPattern match: each].
			wantRefs ifEmpty: [^ (GitNothingToFetch from: remote) signal ifNil: [Dictionary new]].
			wantSignatures := wantRefs collect: [:each | remoteRefs at: each].
			packFileData := protocol wantAll: wantSignatures.
			packFile := GitPackFile readFrom: packFileData readStream].
	packFile repository: repository.
	packFile unpack.
	wantRefs do:
		[:each | self unitOfWork
					updateRef: (remote trackingRefOf: each)
					to: (remoteRefs at: each)].
	GitFeatureFlags pruneWhenFetching ifTrue: [
		self
			pruneRefs: fetchSpec
			keep: (wantRefs collect: [:each | fetchSpec trackingRefOf: each])].
	^ protocol refs