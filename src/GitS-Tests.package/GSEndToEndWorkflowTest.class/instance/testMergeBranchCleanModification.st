tests
testMergeBranchCleanModification
	self
		testMergeBranchCleanDo: [self install: self version1B]
		checkDialog: [self findInDialog: self diff1AToB]
		checkMerged: [self check: self version1B].