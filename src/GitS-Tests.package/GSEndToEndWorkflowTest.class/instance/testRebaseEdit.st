rebase
testRebaseEdit
	self
		testRebaseBase: [self install: self version1A; commitWithMessage: 'base commit']
		main: [self install: self version2A; commitWithMessage: 'main commit']
		target: [self install: self version1B; commitWithMessage: 'target commit']
		onto: 'target commit'
		window: [
			self
				changeRebaseCommand: '* main commit' to: 'edit';
				do: [self leftClick: 'Run'] suppressingMessage: 'You can now edit * main commit. When you are done, press continue and your changes will be committed.';
				leftClick: 'Continue';
				do: [self leftClick: 'Commit changes'] suppressingMessage: 'Rebase complete.';
				check: self version1B;
				check: self version2A;
				leftClick: 'main' asText allBold;
				find: 'base commit';
				find: 'target commit';
				find: 'main commit'].