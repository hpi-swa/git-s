tests
testMergeConflictModifyModifyResolveIncoming
	self
		testMergeConflictModifyModifyDo: [self resolveToIncoming]
		checkMerged: [self check: self version1C].