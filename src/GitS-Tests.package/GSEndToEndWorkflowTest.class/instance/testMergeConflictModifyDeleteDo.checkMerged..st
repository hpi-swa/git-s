tests
testMergeConflictModifyDeleteDo: resolutionBlock checkMerged: checkMergedBlock
	self
		testMergeBase: [self install: self version1A]
		checkBase: [self check: self version1A]
		incoming: [self uninstall: self version1]
		current: [self install: self version1B]
		checkDialog: [self findInDialog: self conflict1ModifyBDelete; do: resolutionBlock]
		checkMerged: checkMergedBlock.