tests
testMergeConflictModifyModifyResolveCurrent
	self
		testMergeConflictModifyModifyResolve: [self resolveToCurrent]
		checkMerged: [self check: self version1B].