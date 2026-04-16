tests
testMergeConflictModifyModifyResolveIncoming
	self
		testMergeConflictModifyModifyResolve: [self resolveToIncoming]
		checkMerged: [self check: self version1C].