rebase
testRebaseSquash
	self
		startRebaseWithBase: [self install: self version1A; commitWithMessage: 'base commit']
		main: [
			self install: self version2A; commitWithMessage: 'main one'.
			self install: self version3A; commitWithMessage: 'main two']
		target: [self install: self version1B; commitWithMessage: 'target commit']
		onto: 'target commit';
		changeRebaseCommand: '* main two' to: 'squash';
		leftClick: 'Run';
		do: [self leftClick: 'Commit changes'] suppressingMessage: 'Rebase complete.';
		check: self version2A;
		check: self version3A;
		leftClick: 'main' asText allBold;
		find: 'base commit';
		find: 'target commit';
		findNo: 'main two';
		find: 'main one';
		"the squashed commit is the branch tip and therefore already selected;
		clicking it would deselect it and clear the details view, so we only find it"
		find: ('Commit *\*\\main one\\main two' withCRs).