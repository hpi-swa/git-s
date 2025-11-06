tests
testMergeBranchCleanModification
	self
		testMergeBranchCleanDo: [self compileMethod: 'method ^ Float pi']
		checkDialog: [self leftClick: 'method'; find: 'method ^ 42\method ^ Float pi' withCRs]
		checkMerged: [self checkMethod: 'method ^ Float pi'].