tests
testCommitCode
	self
		newProject;
		declareClass: #GSDummy instVars: '';
		compileMethod: 'method ^ 42' category: 'testing' class: #GSDummy;
		trackCode;
		commitWithMessage: 'Test commit' checking: [
			self
				toggleSubtree: 'GitS-TestData';
				toggleSubtree: 'GSDummy';
				leftClick: 'method';
				find: 'method ^ 42';
				find: 'testing'].