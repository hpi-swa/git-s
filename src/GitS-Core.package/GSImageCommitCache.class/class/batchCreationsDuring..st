batching
batchCreationsDuring: aBlock
	self creationBatchLevel: self creationBatchLevel + 1.
	^ aBlock ensure: [
		self creationBatchLevel: self creationBatchLevel - 1.
		self shouldCreateAfterBatch ifTrue: [self recreateInBackground]]