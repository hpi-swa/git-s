tests
testMergeConflictModifyDeleteResolveDeletion
	self
		testMergeConflictModifyDeleteDo: [self resolveToIncoming]
		checkMerged: [self checkUninstalled: self version1].