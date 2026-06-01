caching
createInBackground
	self class creationBatchLevel > 0 ifTrue: [^ self class shouldCreateAfterBatch: true].
	self creationProcess:
		([GSGUIUtilities suppressProgressDuring: [self workingCopy withUnitOfWork: [self create]]]
			forkAt: Processor userBackgroundPriority - 1).
	self class shouldCreateAfterBatch: false.