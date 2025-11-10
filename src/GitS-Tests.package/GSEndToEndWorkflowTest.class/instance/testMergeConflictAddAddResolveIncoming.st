tests
testMergeConflictAddAddResolveIncoming
	self
		testMergeConflictAddAddDo: [self resolveToIncoming]
		checkMerged: [self check: self version1B].