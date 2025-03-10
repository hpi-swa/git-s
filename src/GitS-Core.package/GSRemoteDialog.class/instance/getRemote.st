dialog
getRemote
	self open.
	^ self remote ifNil: [GSGUIUtilities cancel]