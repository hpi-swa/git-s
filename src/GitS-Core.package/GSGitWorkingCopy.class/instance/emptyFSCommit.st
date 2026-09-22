accessing
emptyFSCommit
	^ self handleMissingGitStampDuring: [FileSystemGitCommit emptyIn: self fsgitRepository]