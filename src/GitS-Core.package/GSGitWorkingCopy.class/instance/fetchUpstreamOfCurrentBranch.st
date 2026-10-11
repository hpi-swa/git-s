actions-network
fetchUpstreamOfCurrentBranch
	| remoteNameAndRef remoteName remoteRef remote trackingRef |
	remoteNameAndRef := self upstreamRemoteNameAndRefFor: self currentBranchOrCancel.
	remoteName := remoteNameAndRef key.
	remoteRef := remoteNameAndRef value.
	self fetch: remoteName.
	remote := self unitOfWork remoteNamed: remoteName.
	trackingRef := remote trackingRefOf: remoteRef.
	(self unitOfWork objectReferenced: trackingRef) ifNil: [
		GSGUIUtilities informAndCancel: 'Cannot pull, the branch does not exist on the remote.'].
	^ trackingRef