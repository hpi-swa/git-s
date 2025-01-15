updating
everythingChanged
	self
		changed: #activeWorkingCopy;
		initializeRefTree;
		activeRef: (self activeWorkingCopy ifNotNil: #currentBranchOrHead) forceChange: true.