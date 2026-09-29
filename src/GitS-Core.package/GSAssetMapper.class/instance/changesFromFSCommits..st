changes-creation
changesFromFSCommits: aVersionChange
	aVersionChange hexHashesFor: self ifEqual: [^ #()].
	^ self changesFromAssetFiles: (aVersionChange collect: [:each | self loadAssetFileFromFSCommit: each])