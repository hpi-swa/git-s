tests
testMergeConflictAddAddResolve: resolveBlock checkMerged: checkMergedBlock
	self
		testMergeConflictBase: []
		checkBase: [self checkUninstalled: self version1]
		incoming: [self install: self version1B]
		current: [self install: self version1A]
		findInDialog: [self findInDialog: self conflict1AddAAddB]
		resolve: resolveBlock
		checkMerged: checkMergedBlock.