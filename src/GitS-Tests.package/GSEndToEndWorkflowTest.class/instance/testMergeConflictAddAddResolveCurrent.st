tests
testMergeConflictAddAddResolveCurrent
	self
		testMergeConflictAddAddDo: [self resolveToCurrent]
		checkMerged: [self check: self version1A].