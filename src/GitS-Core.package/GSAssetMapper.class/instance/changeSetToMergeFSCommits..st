changes-creation
changeSetToMergeFSCommits: aVersionMerge
	aVersionMerge
		hexHashMergeFor: self
		ifUnchanged: [:emptyChangeSet | ^ emptyChangeSet].
	^ self changeSetToMergeAssetFiles: (aVersionMerge collect: [:each | self loadAssetFileFromFSCommit: each])