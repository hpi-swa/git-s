rebase
testRebaseDrop
	self
		startRebaseWithBase: [self install: self version1A; commitWithMessage: 'base commit']
		main: [self install: self version2A; commitWithMessage: 'main commit']
		target: [self install: self version1B; commitWithMessage: 'target commit']
		onto: 'target commit';
		changeRebaseCommand: '* main commit' to: 'drop';
		runRebaseToCompletion;
		check: self version1B;
		checkUninstalled: self version2;
		leftClick: 'main' asText allBold;
		find: 'base commit';
		find: 'target commit';
		findNo: 'main commit'.