error handling
operation: aBlock
	self class value ifNotNil: [:existingOperation |
		existingOperation workingCopy = self workingCopy ifTrue: [^ aBlock value]].
	^ self class value: self during: [[self withUnitOfWork: aBlock] on: GSOperationCanceledException do: [nil]]