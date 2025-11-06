tests
testMergeConflictModifyDeleteResolveModification
	self
		testMergeConflictModifyDeleteDo: [self leftClick: 'Resolve to current']
		checkMerged: [self checkMethod: 'method ^ Float pi'].