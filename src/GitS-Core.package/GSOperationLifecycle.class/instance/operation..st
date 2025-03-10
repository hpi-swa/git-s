error handling
operation: aBlock
	^ [self withUnitOfWork: aBlock] on: GSOperationCanceledException do: [nil]