activating
withUnitOfWork: aBlock
	self workingCopy ifNil: [^ aBlock value].
	^ self workingCopy withUnitOfWork: aBlock