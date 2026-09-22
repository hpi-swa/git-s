changes-creation
changeSetFromFSCommits: aVersionChange
	aVersionChange hexHashesFor: self ifEqual: [^ self emptyChangeSet].
	^ self changeSetFromSnapshots: (aVersionChange collect: [:each | self loadSnapshotFrom: each filesystem fsCommits: aVersionChange])