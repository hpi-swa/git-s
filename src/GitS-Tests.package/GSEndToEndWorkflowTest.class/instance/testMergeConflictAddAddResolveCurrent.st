tests
testMergeConflictAddAddResolveCurrent
	self
		testMergeConflictAddAddResolve: [self resolveToCurrent]
		checkMerged: [self check: self version1A].