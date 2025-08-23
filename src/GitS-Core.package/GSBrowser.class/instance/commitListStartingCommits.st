commit-list
commitListStartingCommits
	^ {self activeRef
		ifNotNil: [self activeRefCommit]
		ifNil: [self activeWorkingCopy ifNotNil: #headCommit]} select: #notNil