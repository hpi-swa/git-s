changes-creation
changeSetFromFSCommits: aVersionChange
	aVersionChange hexHashesFor: self ifEqual: [:emptyChangeSet | ^ emptyChangeSet].
	^ self changeSetFromSnapshots: (aVersionChange collect: [:each | self loadSnapshotFrom: each filesystem])