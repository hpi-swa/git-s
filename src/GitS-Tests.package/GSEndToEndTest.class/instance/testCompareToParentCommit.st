tests
testCompareToParentCommit
	self
		newProject;
		declareClass: #GSDummy instVars: '';
		compileMethod: 'method ^ 42' category: 'testing' class: #GSDummy;
		compileMethod: 'method2 ^ 42' category: 'testing' class: #GSDummy;
		trackCode;
		commitWithMessage: 'first commit' checking: [];
		compileMethod: 'method ^ Float pi' category: 'testing' class: #GSDummy;
		commitWithMessage: 'second commit' checking: [];
		rightClick: '* second commit';
		moveTo: 'Compare it to';
		leftClick: 'its parent commit';
		find: 'Show changes from * first commit to * second commit';
		toggleSubtree: 'GitS-TestData';
		toggleSubtree: 'GSDummy';
		leftClick: 'method';
		find: 'method ^ 42\method ^ Float pi' withCRs;
		findNo: 'method2'.