changes-creation
changesFromCommits: aVersionChange
	^ self changesFromFSCommits: (aVersionChange collect: [:each | self fsCommitFrom: each])