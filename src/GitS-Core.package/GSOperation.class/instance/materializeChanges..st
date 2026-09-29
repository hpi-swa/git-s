materialization
materializeChanges: aCollection
	self isBatchingEnabled
		ifTrue: [self addPendingChanges: aCollection]
		ifFalse: [self workingCopy basicMaterializeChanges: aCollection].