changes-creation
changesFromFSCommits: aVersionChange
	aVersionChange hexHashesFor: self ifEqual: [^ #()].
	^ self changesFromSnapshots: (aVersionChange collect: [:each | self loadSnapshotFrom: each filesystem fsCommits: aVersionChange])