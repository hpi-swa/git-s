tests
testCreateBranchAtCommitAndSwitch
	self
		setupCode;
		compileMethod: 'method ^ 42';
		commitWithMessage: 'first commit';
		compileMethod: 'method ^ Float pi';
		commitWithMessage: 'second commit';
		rightClick: '*first commit';
		do: [self leftClick: 'Create a branch at it and switch']
		supplyingAnswer: #('Create a branch at * first commit. Branch name:' 'feature');
		toggleSubtree: 'GitS-TestData';
		toggleSubtree: 'GSDummy';
		leftClick: 'method';
		find: 'method ^ Float pi\method ^ 42' withCRs;
		leftClick: 'Load changes';
		leftClick: 'feature' asText allBold;
		find: '*[feature] first commit';
		findNo: '*second commit';
		leftClick: 'main' asText;
		find: '*[feature] first commit';
		find: '*[main] second commit';
		checkMethod: 'method ^ 42'.