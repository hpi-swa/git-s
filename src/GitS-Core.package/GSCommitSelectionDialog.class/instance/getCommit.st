dialog
getCommit
	self open.
	self didSelectACommit ifFalse: [GSGUIUtilities cancel].
	^ self activeCommit