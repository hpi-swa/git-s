tests
testMergeConflictAddAddResolveCurrent
	self
		testMergeConflictAddAddDo: [self leftClick: 'Resolve to current']
		checkMerged: [self checkMethod: 'method ^ -1'].