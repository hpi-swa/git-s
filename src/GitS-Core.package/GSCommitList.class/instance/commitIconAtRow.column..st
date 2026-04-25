ui
commitIconAtRow: rowInteger column: columnInteger
	columnInteger = 3 ifFalse: [^ nil].
	^ self iconForCommit: (self commits at: rowInteger)