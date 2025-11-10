tests
testMergeBranchCleanAddition
	self
		testMergeBranchCleanDo: [self install: self version2A]
		checkDialog: [self findInDialog: self version2A]
		checkMerged: [self check: self version2A].