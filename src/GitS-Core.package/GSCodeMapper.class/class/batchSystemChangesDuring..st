updating
batchSystemChangesDuring: aBlock
	self batchSystemChangesLevel: self batchSystemChangesLevel + 1.
	^ aBlock ensure: [
		self batchSystemChangesLevel: self batchSystemChangesLevel - 1.
		self hasBatchedSystemChanges ifTrue: [self systemChanged]]