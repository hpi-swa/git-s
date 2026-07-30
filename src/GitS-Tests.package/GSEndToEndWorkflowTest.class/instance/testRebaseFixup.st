rebase
testRebaseFixup
	self
		startRebaseWithBase: [self install: self version1A; commitWithMessage: 'base commit']
		main: [
			self install: self version2A; commitWithMessage: 'main one'.
			self install: self version3A; commitWithMessage: 'main two']
		target: [self install: self version1B; commitWithMessage: 'target commit']
		onto: 'target commit';
		changeRebaseCommand: '* main two' to: 'fixup';
		runRebaseToCompletion;
		check: self version1B;
		check: self version2A;
		check: self version3A;
		leftClick: 'main' asText allBold;
		find: 'base commit';
		find: 'target commit';
		find: 'main one';
		findNo: 'main two'.