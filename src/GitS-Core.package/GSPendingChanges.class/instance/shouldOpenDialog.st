testing
shouldOpenDialog
	self shouldAlwaysOpenDialog ifTrue: [^ true].
	^ self hasConflicts