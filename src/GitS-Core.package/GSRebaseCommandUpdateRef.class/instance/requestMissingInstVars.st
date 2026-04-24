requesting
requestMissingInstVars
	super requestMissingInstVars.
	self ref isEmptyOrNil ifTrue: [self ref: (GSGUIUtilities request: 'Ref:')].