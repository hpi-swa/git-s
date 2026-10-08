instance creation
newExistingFromUserAndRegister
	| reference instanceName |
	reference := self requestFSReference.
	instanceName := self unregisteredNameFrom: (self withoutGitSuffix: reference basename).
	^ self onFSReference: reference registerNamed: instanceName