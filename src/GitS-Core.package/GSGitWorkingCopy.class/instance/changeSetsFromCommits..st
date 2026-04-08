changes-creation
changeSetsFromCommits: aVersionChange
	^ self changeSetsFromFSCommits: (aVersionChange collect: [:each | self fsCommitFrom: each])