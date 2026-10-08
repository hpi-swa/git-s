tests
testMergeBothProjectRenamesResolve: resolveBlock checkMerged: checkMergedBlock
	self
		testMergeConflictBase: []
		checkBase: []
		incoming: [self renameProjectTo: 'IncomingProject']
		current: [
			self
				projectName: nil;
				renameProjectTo: 'CurrentProject']
		type: 'both modified'
		findInDialog: [self leftClick: 'Project name']
		resolve: resolveBlock
		checkMerged: checkMergedBlock.