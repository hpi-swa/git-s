tests
testMergeConflictModifyModifyResolveIncoming
	self
		testMergeConflictModifyModifyDo: [self leftClick: 'Resolve to incoming']
		checkMerged: [self checkMethod: 'method ^ Float pi'].