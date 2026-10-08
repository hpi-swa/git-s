tests
testMergeBothProjectRenamesResolveCurrent
	self
		testMergeBothProjectRenamesResolve: [self leftClick: 'Resolve to current']
		checkMerged: [
			self
				find: 'CurrentProject';
				findNo: 'IncomingProject'].