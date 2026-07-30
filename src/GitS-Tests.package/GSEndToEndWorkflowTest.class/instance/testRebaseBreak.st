rebase
testRebaseBreak
	self
		testRebaseBase: [self install: self version1A; commitWithMessage: 'base commit']
		main: [self install: self version2A; commitWithMessage: 'main commit']
		target: [self install: self version1B; commitWithMessage: 'target commit']
		onto: 'target commit'
		window: [
			self
				addRebaseCommandAfter: '* main commit' type: 'break';
				do: [self leftClick: 'Run'] suppressingMessage: 'The rebase hit a ''break'' command. Press continue when you are ready.';
				do: [self leftClick: 'Continue'] suppressingMessage: 'Rebase complete.';
				check: self version1B;
				check: self version2A;
				leftClick: 'main' asText allBold;
				find: 'base commit';
				find: 'target commit';
				find: 'main commit'].