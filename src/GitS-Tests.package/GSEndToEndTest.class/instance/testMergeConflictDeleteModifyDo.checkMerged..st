tests
testMergeConflictDeleteModifyDo: resolutionBlock checkMerged: checkMergedBlock
	self
		testMergeConflictBase: [self compileMethod: 'method ^ 42']
		checkBase: [self checkMethod: 'method ^ 42']
		incoming: [self compileMethod: 'method ^ Float pi']
		current: [self removeMethod: #method]
		checkDialog: [
			self
				leftClick: 'method';
				find: '<<<<<<< current (click to choose)\=======\method ^ Float pi\>>>>>>> incoming (click to choose)' withCRs.
			resolutionBlock value]
		checkMerged: checkMergedBlock.