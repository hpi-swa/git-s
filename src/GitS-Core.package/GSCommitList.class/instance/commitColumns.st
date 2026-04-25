ui
commitColumns
	| now |
	now := TimeStamp now.
	^ {
		[:commit | self formatCommitTimeStamp: commit author timeStamp now: now].
		[:commit | commit author name].
		[:commit | commit message lineNumber: 1].
	} collect: [:each | self commits collect: each]