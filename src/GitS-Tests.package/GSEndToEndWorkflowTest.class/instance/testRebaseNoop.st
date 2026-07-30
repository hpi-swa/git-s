rebase
testRebaseNoop
	self
		startRebaseWithBase: [self install: self version1A; commitWithMessage: 'base commit']
		main: [self install: self version2A; commitWithMessage: 'main commit']
		target: [self install: self version1B; commitWithMessage: 'target commit']
		onto: 'target commit';
		addRebaseCommandAfter: '* main commit' type: 'noop';
		runRebaseToCompletion;
		check: self version1B;
		check: self version2A;
		leftClick: 'main' asText allBold;
		find: 'base commit';
		find: 'target commit';
		find: 'main commit'.