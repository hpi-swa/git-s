tests
testMergeConflictModifyDeleteResolveDeletion
	self
		testMergeConflictModifyDeleteDo: [self leftClick: 'Resolve to incoming']
		checkMerged: [self checkNoMethod: #method].