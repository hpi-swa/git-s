tests
testLoad: labelString
	self
		setupCode;
		compileMethod: 'method ^ 42';
		compileMethod: 'method2 ^ 42';
		commitWithMessage: 'test commit';
		compileMethod: 'method ^ Float pi';
		compileMethod: 'method3 ^ -1';
		rightClick: labelString;
		leftClick: 'Load it';
		find: 'Load commit * test commit';
		toggleSubtree: 'GitS-TestData';
		toggleSubtree: 'GSDummy';
		leftClick: 'method';
		find: 'method ^ Float pi\method ^ 42' withCRs;
		findNo: 'method2';
		leftClick: 'method3';
		find: 'method3 ^ -1';
		leftClick: 'Load changes';
		checkMethod: 'method ^ 42';
		checkMethod: 'method2 ^ 42';
		checkNoMethod: #method3.