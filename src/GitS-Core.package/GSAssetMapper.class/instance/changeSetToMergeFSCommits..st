changes-creation
changeSetToMergeFSCommits: aVersionMerge
	aVersionMerge
		hexHashMergeFor: self
		ifUnchanged: [^ self emptyChangeSet].
	^ self changeSetToMergeAssetFiles: (aVersionMerge collect: [:each | self loadAssetFileFromFSCommit: each])