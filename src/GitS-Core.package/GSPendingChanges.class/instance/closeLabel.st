accessing
closeLabel
	^ self actionBlock ifNil: ['Close'] ifNotNil: ['Cancel']