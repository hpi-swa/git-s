tests
testMergeBranchCleanDeletion
	self
		testMergeBranchCleanDo: [self uninstall: self version1]
		checkDialog: [self findInDialog: self version1A]
		checkMerged: [self checkUninstalled: self version1].