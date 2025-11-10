tests
testMergeFastForward: aBlock
	self
		install: self version1A;
		commitWithMessage: 'first commit';
		rightClick: 'main' asText allBold;
		do: [self leftClick: 'Create a branch at it']
		supplyingAnswer: #('Create a branch at main. Branch name:' 'merge-target');
		install: self version1B;
		install: self version2A;
		commitWithMessage: 'second commit';
		rightClick: 'merge-target' asText;
		leftClick: 'Switch to it';
		leftClick: 'Load changes';
		check: self version1A;
		checkUninstalled: self version2;
		do: aBlock;
		leftClick: 'Merge it into branch ''merge-target''';
		find: 'Fast-forwarding: Load commit * second commit';
		leftClick: 'Load changes';
		check: self version1B;
		check: self version2A;
		find: '*[main] [merge-target] second commit'.