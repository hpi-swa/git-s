accessing
withUnitOfWork: aBlock
	^ self workingCopy
		ifNil: [aBlock value]
		ifNotNil: [:workingCopy | workingCopy withUnitOfWork: aBlock]