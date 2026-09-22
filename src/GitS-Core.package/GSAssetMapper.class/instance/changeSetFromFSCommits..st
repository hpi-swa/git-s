changes-creation
changeSetFromFSCommits: aVersionChange
	aVersionChange hexHashesFor: self ifEqual: [^ self emptyChangeSet].
	^ self changeSetFromAssetFiles: (aVersionChange collect: [:each | self loadAssetFileFromFSCommit: each])