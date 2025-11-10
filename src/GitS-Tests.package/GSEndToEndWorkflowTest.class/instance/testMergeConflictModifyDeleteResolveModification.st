tests
testMergeConflictModifyDeleteResolveModification
	self
		testMergeConflictModifyDeleteDo: [self resolveToCurrent]
		checkMerged: [self check: self version1B].