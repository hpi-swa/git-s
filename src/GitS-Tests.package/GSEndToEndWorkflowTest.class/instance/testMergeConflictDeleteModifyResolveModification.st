tests
testMergeConflictDeleteModifyResolveModification
	self
		testMergeConflictDeleteModifyResolve: [self resolveToIncoming]
		checkMerged: [self check: self version1B].