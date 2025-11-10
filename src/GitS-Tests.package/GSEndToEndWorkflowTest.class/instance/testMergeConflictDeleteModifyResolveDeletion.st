tests
testMergeConflictDeleteModifyResolveDeletion
	self
		testMergeConflictDeleteModifyDo: [self resolveToCurrent]
		checkMerged: [self checkUninstalled: self version1].