tests
testCompareToImage
	self
		setupCode;
		compileMethod: 'method ^ 42';
		compileMethod: 'method2 ^ 42';
		commitWithMessage: 'test commit';
		compileMethod: 'method ^ Float pi';
		rightClick: '* test commit';
		moveTo: 'Compare it to';
		leftClick: 'the image';
		find: 'Show changes from the image to * test commit';
		toggleSubtree: 'GitS-TestData';
		toggleSubtree: 'GSDummy';
		leftClick: 'method';
		find: 'method ^ Float pi\method ^ 42' withCRs;
		findNo: 'method2'.