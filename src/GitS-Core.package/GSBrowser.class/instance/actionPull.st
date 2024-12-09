actions
actionPull
	| branch remoteNameAndRef remoteName remoteRef remote trackingRef |
	self activeWorkingCopyIfNilInformAnd: [^ self].
	branch := self currentBranchIfNilInformAnd: [^ self].
	remoteNameAndRef := self activeWorkingCopy upstreamRemoteNameAndRefFor: branch.
	remoteNameAndRef ifNil: [^ self].
	remoteName := remoteNameAndRef key.
	remoteRef := remoteNameAndRef value.
	self activeWorkingCopy fetch: remoteName.
	remote := self unitOfWork remoteNamed: remoteName.
	trackingRef := remote trackingRefOf: remoteRef.
	(self unitOfWork objectReferenced: trackingRef) ifNil: [
		^ self inform: 'Cannot pull, the branch does not exist on the remote.'].
	self mergeRefIntoHead: trackingRef.