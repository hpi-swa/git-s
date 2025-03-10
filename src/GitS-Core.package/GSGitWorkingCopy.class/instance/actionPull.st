actions-network
actionPull
	| branch remoteNameAndRef remoteName remoteRef remote trackingRef |
	branch := self currentBranchOrCancel.
	remoteNameAndRef := self upstreamRemoteNameAndRefFor: branch.
	remoteName := remoteNameAndRef key.
	remoteRef := remoteNameAndRef value.
	self fetch: remoteName.
	remote := self unitOfWork remoteNamed: remoteName.
	trackingRef := remote trackingRefOf: remoteRef.
	(self unitOfWork objectReferenced: trackingRef) ifNil: [
		GSGUIUtilities informAndCancel: 'Cannot pull, the branch does not exist on the remote.'].
	^ self actionMergeRef: trackingRef