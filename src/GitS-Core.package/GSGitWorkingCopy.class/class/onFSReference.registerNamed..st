instance creation
onFSReference: anFSReference registerNamed: aString
	^ (self onFSReference: anFSReference named: aString)
		register;
		yourself