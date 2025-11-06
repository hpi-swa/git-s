tests
testCompareToParentCommit
	self
		setupCode;
		compileMethod: 'method ^ 42';
		compileMethod: 'method2 ^ 42';
		commitWithMessage: 'first commit';
		compileMethod: 'method ^ Float pi';
		commitWithMessage: 'second commit';
		rightClick: '* second commit';
		moveTo: 'Compare it to';
		leftClick: 'its parent commit';
		find: 'Show changes from * first commit to * second commit';
		toggleSubtree: 'GitS-TestData';
		toggleSubtree: 'GSDummy';
		leftClick: 'method';
		find: 'method ^ 42\method ^ Float pi' withCRs;
		findNo: 'method2'.