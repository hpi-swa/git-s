tests
testCompareToImage
	self
		newProject;
		declareClass: #GSDummy instVars: '';
		compileMethod: 'method ^ 42' category: 'testing' class: #GSDummy;
		compileMethod: 'method2 ^ 42' category: 'testing' class: #GSDummy;
		trackCode;
		commitWithMessage: 'test commit' checking: [];
		compileMethod: 'method ^ Float pi' category: 'testing' class: #GSDummy;
		rightClick: '* test commit';
		moveTo: 'Compare it to';
		leftClick: 'the image';
		find: 'Show changes from the image to * test commit';
		toggleSubtree: 'GitS-TestData';
		toggleSubtree: 'GSDummy';
		leftClick: 'method';
		find: 'method ^ Float pi\method ^ 42' withCRs;
		findNo: 'method2'.