changes-creation
changeSetFromFSCommits: aVersionChange
	aVersionChange hexHashesFor: self ifEqual: [:emptyChangeSet | ^ emptyChangeSet].
	^ self changeSetFromAssetFiles: (aVersionChange collect: [:each | self loadAssetFileFromFSCommit: each])