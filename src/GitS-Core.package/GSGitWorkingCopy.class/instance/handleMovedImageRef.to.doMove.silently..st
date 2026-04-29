image-hash
handleMovedImageRef: oldRef to: newRef doMove: moveBoolean silently: silentBoolean
	moveBoolean
		ifTrue: [self unitOfWork moveRef: oldRef to: newRef silently: silentBoolean]
		ifFalse: [self unitOfWork copyRef: oldRef to: newRef silently: silentBoolean].
	(self unitOfWork upstreamRefOfBranchNamed: oldRef) ifNotNil: [:upstream |
		self unitOfWork setUpstreamRefOfBranchNamed: newRef to: upstream.
		moveBoolean ifTrue: [self unitOfWork unsetUpstreamRefOfBranchNamed: oldRef]].
	(self unitOfWork upstreamRemoteOfBranchNamed: oldRef) ifNotNil: [:upstream |
		self unitOfWork setUpstreamRemoteOfBranchNamed: newRef to: upstream.
		moveBoolean ifTrue: [self unitOfWork unsetUpstreamRemoteOfBranchNamed: oldRef]].