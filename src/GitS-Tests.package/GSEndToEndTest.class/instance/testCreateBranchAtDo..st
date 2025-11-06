tests
testCreateBranchAtDo: aBlock
	self
		setupCode;
		compileMethod: 'method ^ 42';
		commitWithMessage: 'first commit';
		rightClick: 'main' asText allBold;
		do: [self leftClick: 'Create a branch at it']
		supplyingAnswer: #('Create a branch at main. Branch name:' 'feature');
		compileMethod: 'method ^ Float pi';
		commitWithMessage: 'second commit';
		leftClick: 'feature' asText;
		find: '*[feature] first commit';
		findNo: '*second commit';
		leftClick: 'main' asText allBold;
		find: '*[feature] first commit';
		find: '*[main] second commit';
		checkMethod: 'method ^ Float pi'.