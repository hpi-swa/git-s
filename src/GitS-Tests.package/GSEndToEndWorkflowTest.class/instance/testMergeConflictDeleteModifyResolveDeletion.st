tests
testMergeConflictDeleteModifyResolveDeletion
	self
		testMergeConflictDeleteModifyResolve: [self resolveToCurrent]
		checkMerged: [self checkUninstalled: self version1].