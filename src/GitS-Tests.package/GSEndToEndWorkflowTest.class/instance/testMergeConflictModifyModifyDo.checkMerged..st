tests
testMergeConflictModifyModifyDo: resolutionBlock checkMerged: checkMergedBlock
	self
		testMergeConflictBase: [self install: self version1A]
		checkBase: [self check: self version1A]
		incoming: [self install: self version1C]
		current: [self install: self version1B]
		checkDialog: [self findInDialog: self conflict1ModifyBModifyC; do: resolutionBlock]
		checkMerged: checkMergedBlock.