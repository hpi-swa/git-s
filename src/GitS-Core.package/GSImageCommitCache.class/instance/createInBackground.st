caching
createInBackground
	self creationProcess: ([GSGUIUtilities suppressProgressDuring: [self create]] forkAt: Processor userBackgroundPriority - 1).