tests
testMergeFastForward: aBlock
	self
		setupCode;
		compileMethod: 'method ^ 42';
		commitWithMessage: 'first commit';
		rightClick: 'main' asText allBold;
		do: [self leftClick: 'Create a branch at it']
		supplyingAnswer: #('Create a branch at main. Branch name:' 'merge-target');
		compileMethod: 'method ^ Float pi';
		compileMethod: 'method2 ^ 42';
		commitWithMessage: 'second commit';
		rightClick: 'merge-target' asText;
		leftClick: 'Switch to it';
		leftClick: 'Load changes';
		checkMethod: 'method ^ 42';
		checkNoMethod: #method2.
	aBlock value.
	self
		leftClick: 'Merge it into branch ''merge-target''';
		find: 'Fast-forwarding: Load commit * second commit';
		leftClick: 'Load changes';
		checkMethod: 'method ^ Float pi';
		checkMethod: 'method2 ^ 42';
		find: '*[main] [merge-target] second commit'.