tests
testMergeBranchCleanAddition
	self
		testMergeBranchCleanDo: [self compileMethod: 'method2 ^ 42']
		checkDialog: [self leftClick: 'method2'; find: 'method2 ^ 42']
		checkMerged: [self checkMethod: 'method2 ^ 42'].