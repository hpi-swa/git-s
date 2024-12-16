updating
everythingChanged
	self
		changed: #activeWorkingCopy;
		activeRef: nil;
		activeCommit: (self activeWorkingCopy ifNotNil: #headCommit);
		initializeRefTree.