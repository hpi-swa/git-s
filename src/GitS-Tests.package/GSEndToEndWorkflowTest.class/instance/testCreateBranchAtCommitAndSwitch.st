tests
testCreateBranchAtCommitAndSwitch
	self
		install: self version1A;
		commitWithMessage: 'first commit';
		install: self version1B;
		commitWithMessage: 'second commit';
		rightClick: 'first commit';
		do: [self leftClick: 'Create a branch at it and switch']
		supplyingAnswer: #('Create a branch at * first commit. Branch name:' 'feature');
		openDialogPath;
		findInDialog: self diff1BToA;
		leftClick: 'Load changes';
		leftClick: 'feature' asText allBold;
		check: 'first commit' hasBalloon: 'Latest commit of feature*';
		findNo: 'second commit';
		leftClick: 'main' asText;
		check: 'first commit' hasBalloon: 'Latest commit of feature*';
		check: 'second commit' hasBalloon: 'Latest commit of main*';
		check: self version1A.