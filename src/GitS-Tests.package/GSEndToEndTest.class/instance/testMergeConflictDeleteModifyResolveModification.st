tests
testMergeConflictDeleteModifyResolveModification
	self
		testMergeConflictDeleteModifyDo: [self leftClick: 'Resolve to incoming']
		checkMerged: [self checkMethod: 'method ^ Float pi'].