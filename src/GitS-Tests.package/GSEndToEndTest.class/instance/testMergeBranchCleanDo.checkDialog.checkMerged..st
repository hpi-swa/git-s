tests
testMergeBranchCleanDo: actionBlock checkDialog: checkDialogBlock checkMerged: checkMergedBlock
	self
		testMergeBase: [self compileMethod: 'method ^ 42']
		checkBase: [self checkMethod: 'method ^ 42'; checkNoMethod: #method2]
		incoming: actionBlock
		current: [self compileMethod: 'mine ^ -1']
		checkDialog: [checkDialogBlock value. self findNo: 'mine']
		checkMerged: [checkMergedBlock value. self checkMethod: 'mine ^ -1'].