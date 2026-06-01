batching
batchCreationsDuring: aBlock
	self creationBatchLevel: self creationBatchLevel + 1.
	^ aBlock ensure: [
		self creationBatchLevel: self creationBatchLevel - 1.
		(self shouldCreateAfterBatch and: [self creationBatchLevel = 0]) ifTrue: [self allSubInstancesDo: #recreateInBackground]]