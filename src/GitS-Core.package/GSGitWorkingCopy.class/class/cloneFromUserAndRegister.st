instance creation
cloneFromUserAndRegister
	| url name reference |
	url := GSGUIUtilities request: 'URL to clone:'.
	name := self nameFromURL: url.
	reference := self requestEmptyFSReferenceForName: name.
	^ (self cloneFrom: url to: reference named: name)
		register;
		yourself