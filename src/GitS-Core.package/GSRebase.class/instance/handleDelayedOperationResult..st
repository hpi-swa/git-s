running
handleDelayedOperationResult: anObject
	(self handleOperationResult: anObject)
		ifTrue: [self operationLifecycle operation: [self run]].