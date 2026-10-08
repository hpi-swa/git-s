instance creation
newFromUserAndRegister
	| instanceName reference |
	instanceName := self requestUnregisteredName.
	reference := self requestFSReferenceForName: instanceName.
	^ self onFSReference: reference registerNamed: instanceName