generating
synchronousUpdateFrom: aSharedQueue2 for: aProcess
	self
		addNewCommits: (self synchronousNewCommitsFrom: aSharedQueue2 for: aProcess)
		saveScrollPositions: false.