tests
testMergeConflictAddAddDo: resolutionBlock checkMerged: checkMergedBlock
	self
		testMergeConflictBase: []
		checkBase: [self checkUninstalled: self version1]
		incoming: [self install: self version1B]
		current: [self install: self version1A]
		checkDialog: [self findInDialog: self conflict1AddAAddB; do: resolutionBlock]
		checkMerged: checkMergedBlock.