tests
testMergeBranchCleanDeletion
	self
		testMergeBranchCleanDo: [self removeMethod: #method]
		checkDialog: [self leftClick: 'method'; find: 'method ^ 42']
		checkMerged: [self checkNoMethod: #method].