tests
testCommitCode
	self
		newProject;
		declareClass: #GSDummy instVars: '';
		compileMethod: 'test ^ 42' category: 'testing' class: #GSDummy;
		trackCode;
		commitWithMessage: 'Test commit' checking: [
			self
				toggleSubtree: 'GitS-TestData';
				toggleSubtree: 'GSDummy';
				leftClick: 'test';
				find: 'test ^ 42';
				find: 'testing'].