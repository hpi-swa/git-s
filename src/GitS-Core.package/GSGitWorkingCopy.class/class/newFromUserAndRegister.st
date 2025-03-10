instance creation
newFromUserAndRegister
	| name reference |
	name := self requestUnregisteredName.
	reference := self requestFSReferenceForName: name.
	^ (self onFSReference: reference named: name)
		register;
		yourself