changes-creation
changeSetsToMergeCommits: aVersionMerge
	^ self changeSetsToMergeFSCommits: (aVersionMerge collect: [:each | self fsCommitFrom: each])