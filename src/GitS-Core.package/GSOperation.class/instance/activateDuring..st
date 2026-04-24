activating
activateDuring: aBlock
	self isActive ifTrue: [^ aBlock value].
	^ self becomeActiveDuring:
		[self withUnitOfWork:
			[self maybeMaterializePendingChangeSetsAfter:
				[self ignoreCancelationDuring: aBlock]]]