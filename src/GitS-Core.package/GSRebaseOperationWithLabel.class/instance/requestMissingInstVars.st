requesting
requestMissingInstVars
	super requestMissingInstVars.
	self label isEmptyOrNil ifTrue: [self label: (GSGUIUtilities request: 'Label:')].