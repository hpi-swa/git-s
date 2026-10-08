instance creation
cloneFromUserAndRegister
	| url reference instanceName |
	url := GSGUIUtilities request: 'URL to clone:'.
	instanceName := self nameFromURL: url.
	reference := self requestEmptyFSReferenceForName: instanceName.
	^ (self cloneFrom: url to: reference named: instanceName)
		register;
		yourself