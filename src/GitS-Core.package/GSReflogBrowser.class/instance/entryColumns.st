ui
entryColumns
	| now |
	now := TimeStamp now.
	^ {
		[:entry | GSUpdatingList formatTimeStamp: entry stamp timeStamp now: now].
		[:entry | entry stamp name].
		[:entry | entry message lineNumber: 1].
	} collect: [:each | self entries collect: each]