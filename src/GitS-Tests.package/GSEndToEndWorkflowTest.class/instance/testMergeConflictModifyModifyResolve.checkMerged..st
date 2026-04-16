tests
testMergeConflictModifyModifyResolve: resolveBlock checkMerged: checkMergedBlock
	self
		testMergeConflictBase: [self install: self version1A]
		checkBase: [self check: self version1A]
		incoming: [self install: self version1C]
		current: [self install: self version1B]
		findInDialog: [self findInDialog: self conflict1ModifyBModifyC]
		resolve: resolveBlock
		checkMerged: checkMergedBlock.