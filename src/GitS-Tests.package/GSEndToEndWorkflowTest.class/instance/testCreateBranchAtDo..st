tests
testCreateBranchAtDo: aBlock
	self
		install: self version1A;
		commitWithMessage: 'first commit';
		rightClick: 'main' asText allBold;
		do: [self leftClick: 'Create a branch at it']
		supplyingAnswer: #('Create a branch at main. Branch name:' 'feature');
		install: self version1B;
		commitWithMessage: 'second commit';
		leftClick: 'feature' asText;
		find: '*[feature] first commit';
		findNo: '*second commit';
		leftClick: 'main' asText allBold;
		find: '*[feature] first commit';
		find: '*[main] second commit';
		check: self version1B.