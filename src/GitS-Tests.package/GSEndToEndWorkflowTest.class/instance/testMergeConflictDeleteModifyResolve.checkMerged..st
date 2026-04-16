tests
testMergeConflictDeleteModifyResolve: resolveBlock checkMerged: checkMergedBlock
	self
		testMergeConflictBase: [self install: self version1A]
		checkBase: [self check: self version1A]
		incoming: [self install: self version1B]
		current: [self uninstall: self version1]
		findInDialog: [self findInDialog: self conflict1DeleteModifyB]
		resolve: resolveBlock
		checkMerged: checkMergedBlock.