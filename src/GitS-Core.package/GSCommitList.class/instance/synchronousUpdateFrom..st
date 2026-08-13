generating
synchronousUpdateFrom: aGenerator
	self
		addNewCommits: (aGenerator waitForAtLeast: 20 timeout: 100 milliSeconds)
		saveScrollPositions: false.