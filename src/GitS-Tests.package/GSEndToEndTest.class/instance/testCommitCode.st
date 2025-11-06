tests
testCommitCode
	self
		setupCode;
		compileMethod: 'method ^ 42';
		commitWithMessage: 'Test commit' checking: [
			self
				toggleSubtree: 'GitS-TestData';
				toggleSubtree: 'GSDummy';
				leftClick: 'method';
				find: 'method ^ 42';
				find: 'testing'].