image-hash
handleMovedImageRef: oldRef to: newRef doMove: doMove
	doMove
		ifTrue: [self unitOfWork moveRef: oldRef to: newRef]
		ifFalse: [self unitOfWork copyRef: oldRef to: newRef].
	(self unitOfWork upstreamRefOfBranchNamed: oldRef) ifNotNil: [:upstream |
		self unitOfWork setUpstreamRefOfBranchNamed: newRef to: upstream.
		doMove ifTrue: [self unitOfWork unsetUpstreamRefOfBranchNamed: oldRef]].
	(self unitOfWork upstreamRemoteOfBranchNamed: oldRef) ifNotNil: [:upstream |
		self unitOfWork setUpstreamRemoteOfBranchNamed: newRef to: upstream.
		doMove ifTrue: [self unitOfWork unsetUpstreamRemoteOfBranchNamed: oldRef]].