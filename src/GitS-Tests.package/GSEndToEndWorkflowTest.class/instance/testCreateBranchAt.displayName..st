tests
testCreateBranchAt: labelString displayName: displayString
	self
		install: self version1A;
		commitWithMessage: 'first commit';
		rightClick: labelString;
		do: [self leftClick: 'Create a branch at it']
		supplyingAnswer: {'Create a branch at {1}. Branch name:' format: {displayString}. 'feature'};
		install: self version1B;
		commitWithMessage: 'second commit';
		leftClick: 'feature' asText;
		check: 'first commit' hasBalloon: 'Latest commit of feature*';
		findNo: 'second commit';
		leftClick: 'main' asText allBold;
		check: 'first commit' hasBalloon: 'Latest commit of feature*';
		check: 'second commit' hasBalloon: 'Latest commit of main*';
		check: self version1B.