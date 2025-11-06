tests
testMergeConflictDeleteModifyResolveDeletion
	self
		testMergeConflictDeleteModifyDo: [self leftClick: 'Resolve to current']
		checkMerged: [self checkNoMethod: #method].