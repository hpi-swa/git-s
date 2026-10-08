tests
testMergeBothProjectRenamesResolveIncoming
	self
		testMergeBothProjectRenamesResolve: [self leftClick: 'Resolve to incoming']
		checkMerged: [
			self
				find: 'IncomingProject';
				findNo: 'CurrentProject'].