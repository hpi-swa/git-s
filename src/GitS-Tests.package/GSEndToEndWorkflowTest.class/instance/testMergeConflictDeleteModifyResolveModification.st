tests
testMergeConflictDeleteModifyResolveModification
	self
		testMergeConflictDeleteModifyDo: [self resolveToIncoming]
		checkMerged: [self check: self version1B].