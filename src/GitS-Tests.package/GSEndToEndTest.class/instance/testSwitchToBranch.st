tests
testSwitchToBranch
	self
		setupCode;
		compileMethod: 'method ^ 42';
		commitWithMessage: 'first commit';
		rightClick: 'main' asText allBold;
		do: [self leftClick: 'Create a branch at it']
		supplyingAnswer: #('Create a branch at main. Branch name:' 'feature');
		compileMethod: 'method ^ Float pi';
		commitWithMessage: 'second commit';
		checkMethod: 'method ^ Float pi';
		rightClick: 'feature' asText;
		leftClick: 'Switch to it';
		toggleSubtree: 'GitS-TestData';
		toggleSubtree: 'GSDummy';
		leftClick: 'method';
		find: 'method ^ Float pi\method ^ 42' withCRs;
		leftClick: 'Load changes';
		checkMethod: 'method ^ 42';
		find: 'feature' asText allBold;
		find: 'main' asText.