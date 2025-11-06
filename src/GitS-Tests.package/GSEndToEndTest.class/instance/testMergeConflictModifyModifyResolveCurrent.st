tests
testMergeConflictModifyModifyResolveCurrent
	self
		testMergeConflictModifyModifyDo: [self leftClick: 'Resolve to current']
		checkMerged: [self checkMethod: 'method ^ -1'].