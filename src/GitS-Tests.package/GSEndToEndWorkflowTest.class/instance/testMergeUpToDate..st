tests
testMergeUpToDate: aBlock
	self
		install: self version1A;
		commitWithMessage: 'first commit';
		rightClick: 'main' asText allBold;
		do: [self leftClick: 'Create a branch at it']
		supplyingAnswer: #('Create a branch at main. Branch name:' 'merge-source');
		install: self version1B;
		install: self version2A;
		commitWithMessage: 'second commit';
		do: aBlock;
		do: [self leftClick: 'Merge it into branch ''main''']
		suppressingMessage: 'Already up to date.';
		check: self version1B;
		check: self version2A.