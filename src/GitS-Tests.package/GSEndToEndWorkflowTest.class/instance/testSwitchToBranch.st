tests
testSwitchToBranch
	self
		install: self version1A;
		commitWithMessage: 'first commit';
		rightClick: 'main' asText allBold;
		do: [self leftClick: 'Create a branch at it']
		supplyingAnswer: #('Create a branch at main. Branch name:' 'feature');
		install: self version1B;
		commitWithMessage: 'second commit';
		check: self version1B;
		rightClick: 'feature' asText;
		leftClick: 'Switch to it';
		openDialogPath;
		findInDialog: self diff1BToA;
		leftClick: 'Load changes';
		check: self version1A;
		find: 'feature' asText allBold;
		find: 'main' asText.