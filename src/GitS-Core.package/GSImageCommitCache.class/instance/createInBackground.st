caching
createInBackground
	self creationProcess:
		([GSGUIUtilities suppressProgressDuring: [self workingCopy withUnitOfWork: [self create]]]
			forkAt: Processor userBackgroundPriority - 1).