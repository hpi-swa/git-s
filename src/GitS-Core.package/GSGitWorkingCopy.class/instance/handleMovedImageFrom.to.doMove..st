image-hash
handleMovedImageFrom: oldHash to: newHash doMove: doMove
	| oldPrefix newPrefix oldRefs |
	oldPrefix := self imageRefsDirectoryForHash: oldHash.
	newPrefix := self imageRefsDirectoryForHash: newHash.
	oldRefs := self allReferences select: [:each | each beginsWith: oldPrefix].
	oldRefs do: [:oldRef | | newRef |
		newRef := newPrefix, (oldRef allButFirst: oldPrefix size).
		self handleMovedImageRef: oldRef to: newRef doMove: doMove silently: true].
	self changed.
	self allReferences do: [:each | | ref target |
		ref := self unitOfWork ref: each.
		((ref name beginsWith: newPrefix)
			and: [ref isSymbolic]
			and: [(target := ref targetRef) beginsWith: oldPrefix])
			ifTrue: [
				self unitOfWork
					updateSymbolicRef: ref name
					toRef: newPrefix, (target allButFirst: oldPrefix size)
					message: nil]].