accessing
isBatchingEnabled: aBoolean
	aBoolean ifFalse: [self materializePendingChanges].
	isBatchingEnabled := aBoolean.