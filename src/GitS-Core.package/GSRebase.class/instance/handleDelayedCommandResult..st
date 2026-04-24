running
handleDelayedCommandResult: anObject
	(self handleCommandResult: anObject)
		ifTrue: [self operationStarter ensureActiveOperationDuring: [self run]].