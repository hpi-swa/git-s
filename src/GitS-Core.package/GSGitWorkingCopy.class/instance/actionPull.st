actions-network
actionPull
	| branch remoteNameAndRef remoteName remoteRef remote trackingRef |
	branch := self currentBranchIfNilInformAnd: [^ self].
	remoteNameAndRef := self upstreamRemoteNameAndRefFor: branch.
	remoteNameAndRef ifNil: [^ self].
	remoteName := remoteNameAndRef key.
	remoteRef := remoteNameAndRef value.
	self fetch: remoteName.
	remote := self unitOfWork remoteNamed: remoteName.
	trackingRef := remote trackingRefOf: remoteRef.
	(self unitOfWork objectReferenced: trackingRef) ifNil: [
		^ self inform: 'Cannot pull, the branch does not exist on the remote.'].
	self actionMergeRef: trackingRef.