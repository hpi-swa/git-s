rebase
testRebaseReword
	self
		startRebaseWithBase: [self install: self version1A; commitWithMessage: 'base commit']
		main: [self install: self version2A; commitWithMessage: 'main commit']
		target: [self install: self version1B; commitWithMessage: 'target commit']
		onto: 'target commit';
		changeRebaseCommand: '* main commit' to: 'reword';
		leftClick: 'Run';
		leftClick: (self find: 'main commit' in: (self findWindowContaining: 'Reword * main commit'));
		sendControl: $a;
		sendKeystroke: Character backspace;
		type: 'reworded message';
		do: [self leftClick: 'Commit changes'] suppressingMessage: 'Rebase complete.';
		check: self version1B;
		check: self version2A;
		leftClick: 'main' asText allBold;
		find: 'base commit';
		find: 'target commit';
		find: 'reworded message';
		findNo: 'main commit'.