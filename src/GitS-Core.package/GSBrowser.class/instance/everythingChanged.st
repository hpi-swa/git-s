updating
everythingChanged
	self
		changed: #activeWorkingCopy;
		initializeRefTree.
	self activeWorkingCopy
		ifNotNil: [self activeRef: self activeWorkingCopy currentBranchOrHead]
		ifNil: [self activeRef: nil; activeCommit: nil].