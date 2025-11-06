tests
testMergeConflictModifyDeleteDo: resolutionBlock checkMerged: checkMergedBlock
	self
		testMergeBase: [self compileMethod: 'method ^ 42']
		checkBase: [self checkMethod: 'method ^ 42']
		incoming: [self removeMethod: #method]
		current: [self compileMethod: 'method ^ Float pi']
		checkDialog: [
			self
				leftClick: 'method';
				find: '<<<<<<< current (click to choose)\method ^ Float pi\=======\>>>>>>> incoming (click to choose)' withCRs.
			resolutionBlock value]
		checkMerged: checkMergedBlock.