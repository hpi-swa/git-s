tests
testMergeConflictAddAddResolveIncoming
	self
		testMergeConflictAddAddDo: [self leftClick: 'Resolve to incoming']
		checkMerged: [self checkMethod: 'method ^ Float pi'].