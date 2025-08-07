tests
testLoad
	self
		newProject;
		declareClass: #GSDummy instVars: '';
		compileMethod: 'method ^ 42' category: 'testing' class: #GSDummy;
		compileMethod: 'method2 ^ 42' category: 'testing' class: #GSDummy;
		trackCode;
		commitWithMessage: 'test commit' checking: [];
		compileMethod: 'method ^ Float pi' category: 'testing' class: #GSDummy;
		compileMethod: 'method3 ^ -1' category: 'testing' class: #GSDummy;
		rightClick: '* test commit';
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
		checkMethod: 'method ^ 42' category: 'testing' class: #GSDummy;
		checkMethod: 'method2 ^ 42' category: 'testing' class: #GSDummy;
		checkNoMethod: #method3 class: #GSDummy.