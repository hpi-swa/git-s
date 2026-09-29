changes-creation
changesFromCommit: aCommitOrNil toCommit: anotherCommitOrNil
	^ self changesFromCommits: (GSVersionChange current: aCommitOrNil incoming: anotherCommitOrNil)