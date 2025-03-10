requesting
requestMissingInstVars
	super requestMissingInstVars.
	self command isEmptyOrNil ifTrue: [self command: (GSGUIUtilities request: 'Command:')].