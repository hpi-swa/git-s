activating
activateDuring: aBlock
	self isActive ifTrue: [^ aBlock value].
	^ self becomeActiveDuring:
		[self withUnitOfWork:
			[self maybeMaterializePendingChangesAfter:
				[self ignoreCancelationDuring: aBlock]]]