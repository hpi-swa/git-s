tests
testCreateBranchAtCommitAndSwitch
	self
		install: self version1A;
		commitWithMessage: 'first commit';
		install: self version1B;
		commitWithMessage: 'second commit';
		rightClick: '*first commit';
		do: [self leftClick: 'Create a branch at it and switch']
		supplyingAnswer: #('Create a branch at * first commit. Branch name:' 'feature');
		openDialogPath;
		findInDialog: self diff1BToA;
		leftClick: 'Load changes';
		leftClick: 'feature' asText allBold;
		find: '*[feature] first commit';
		findNo: '*second commit';
		leftClick: 'main' asText;
		find: '*[feature] first commit';
		find: '*[main] second commit';
		check: self version1A.