tests
testMergeUpToDate: aBlock
	self
		setupCode;
		compileMethod: 'method ^ 42';
		commitWithMessage: 'first commit';
		rightClick: 'main' asText allBold;
		do: [self leftClick: 'Create a branch at it']
		supplyingAnswer: #('Create a branch at main. Branch name:' 'merge-source');
		compileMethod: 'method ^ Float pi';
		compileMethod: 'method2 ^ 42';
		commitWithMessage: 'second commit'.
	aBlock value.
	self
		do: [self leftClick: 'Merge it into branch ''main''']
		suppressingMessage: 'Already up to date.';
		checkMethod: 'method ^ Float pi';
		checkMethod: 'method2 ^ 42'.