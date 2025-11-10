tests
testMergeConflictDeleteModifyDo: resolutionBlock checkMerged: checkMergedBlock
	self
		testMergeConflictBase: [self install: self version1A]
		checkBase: [self check: self version1A]
		incoming: [self install: self version1B]
		current: [self uninstall: self version1]
		checkDialog: [self findInDialog: self conflict1DeleteModifyB; do: resolutionBlock]
		checkMerged: checkMergedBlock.