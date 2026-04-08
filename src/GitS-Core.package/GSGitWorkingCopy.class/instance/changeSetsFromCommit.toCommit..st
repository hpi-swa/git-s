changes-creation
changeSetsFromCommit: aCommitOrNil toCommit: anotherCommitOrNil
	^ self changeSetsFromCommits: (GSVersionChange current: aCommitOrNil incoming: anotherCommitOrNil)