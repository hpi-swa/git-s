accessing
isBatchingEnabled: aBoolean
	aBoolean ifFalse: [self materializePendingChangeSets].
	isBatchingEnabled := aBoolean.