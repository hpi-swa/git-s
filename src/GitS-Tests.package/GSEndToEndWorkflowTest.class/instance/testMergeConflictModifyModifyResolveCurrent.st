tests
testMergeConflictModifyModifyResolveCurrent
	self
		testMergeConflictModifyModifyDo: [self resolveToCurrent]
		checkMerged: [self check: self version1B].