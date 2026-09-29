changes-creation
changesToMergeCommits: aVersionMerge
	^ self changesToMergeFSCommits: (aVersionMerge collect: [:each | self fsCommitFrom: each])