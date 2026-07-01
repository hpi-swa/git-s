dialog
getCommit
	self open.
	^ self activeCommit ifNil: [GSGUIUtilities cancel]