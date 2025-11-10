tests
testAutoMerge
	self
		testMergeBase: [self install: self autoMergeVersionBase]
		checkBase: [self check: self autoMergeVersionBase]
		incoming: [self install: self autoMergeVersionIncoming]
		current: [self install: self autoMergeVersionCurrent]
		checkDialog: [self findInDialog: self autoMergeVersionDiff]
		checkMerged: [self check: self autoMergeVersionMerged].