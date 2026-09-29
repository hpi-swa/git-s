changes-creation
changesToMergeFSCommits: aVersionMerge
	aVersionMerge
		hexHashMergeFor: self
		ifUnchanged: [^ #()].
	^ self changesToMergeAssetFiles: (aVersionMerge collect: [:each | self loadAssetFileFromFSCommit: each])