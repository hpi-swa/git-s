rebase
testRebaseLabelReset
	self
		testRebaseBase: [self install: self version1A; commitWithMessage: 'base commit']
		main: [
			self install: self version2A; commitWithMessage: 'main one'.
			self install: self version3A; commitWithMessage: 'main two']
		target: [self install: self version1B; commitWithMessage: 'target commit']
		onto: 'target commit'
		window: [
			self
				addRebaseCommandAfter: '* main one' type: 'label' supplyingAnswers: #(('Label:' 'X'));
				addRebaseCommandAfter: '* main two' type: 'reset' supplyingAnswers: #(('Label:' 'X'));
				runRebaseToCompletion;
				check: self version2A;
				checkUninstalled: self version3;
				leftClick: 'main' asText allBold;
				find: 'base commit';
				find: 'target commit';
				find: 'main one';
				findNo: 'main two'].