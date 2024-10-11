testing
shouldOpenDialog
	self shouldAlwaysOpenDialog ifTrue: [^ true].
	^ GSChangeSet anyIncludesConflicts: self changeSets