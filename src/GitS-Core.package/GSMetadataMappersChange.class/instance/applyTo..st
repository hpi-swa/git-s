applying
applyTo: aMetadataBuilder
	self verifyExclusionState.
	self isExcluded ifTrue: [^ self].
	self basicApplyTo: aMetadataBuilder.