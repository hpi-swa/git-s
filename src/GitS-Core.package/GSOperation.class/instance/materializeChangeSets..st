materialization
materializeChangeSets: aCollection
	self isBatchingEnabled
		ifTrue: [self addPendingChangeSets: aCollection]
		ifFalse: [self workingCopy basicMaterializeChangeSets: aCollection].