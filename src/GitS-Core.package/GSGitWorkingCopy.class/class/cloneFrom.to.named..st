instance creation
cloneFrom: aStringOrUrl to: anFSReference named: aString
	| workingCopy |
	workingCopy := self onFSReference: anFSReference named: aString.
	workingCopy withUnitOfWork: [workingCopy cloneFrom: aStringOrUrl].
	^ workingCopy