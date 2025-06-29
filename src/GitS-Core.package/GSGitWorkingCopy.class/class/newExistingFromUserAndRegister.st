instance creation
newExistingFromUserAndRegister
	| name reference |
	reference := self requestFSReference.
	name := self unregisteredNameFrom: (self withoutGitSuffix: reference basename).
	^ self onFSReference: reference registerNamed: name