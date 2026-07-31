rebase
testRebaseAbort
	self
		startRebaseWithBase: [self install: self version1A; commitWithMessage: 'base commit']
		main: [self install: self version2A; commitWithMessage: 'main commit']
		target: [self install: self version1B; commitWithMessage: 'target commit']
		onto: 'target commit';
		do: [self leftClick: 'Abort']
		supplyingAnswers: #(
			('Do you really want to abort the rebase?' true)
			('Rebase aborted.' true));
		check: self version1A;
		check: self version2A;
		leftClick: 'main' asText allBold;
		find: 'base commit';
		find: 'main commit';
		findNo: 'target commit'.