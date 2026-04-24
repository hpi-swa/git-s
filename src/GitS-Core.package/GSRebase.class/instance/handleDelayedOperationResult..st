running
handleDelayedOperationResult: anObject
	(self handleOperationResult: anObject)
		ifTrue: [self operationStarter ensureActiveOperationDuring: [self run]].