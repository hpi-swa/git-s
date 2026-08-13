tests
testMergeConflictModifyDeleteDo: resolutionBlock checkMerged: checkMergedBlock
	self
		testMergeConflictBase: [self install: self version1A]
		checkBase: [self check: self version1A]
		incoming: [self uninstall: self version1]
		current: [self install: self version1B]
		type: 'current modified, incoming deleted'
		findInDialog: [self findInDialog: self conflict1ModifyBDelete]
		resolve: resolutionBlock
		checkMerged: checkMergedBlock.