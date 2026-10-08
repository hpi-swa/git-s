tests
testLoadExcludedModification
	self
		install: self version1A;
		install: self version2A;
		commitWithMessage: 'test commit';
		install: self version1B;
		uninstall: self version2;
		rightClick: 'test commit';
		leftClick: 'Load it';
		find: 'Load commit * test commit';
		openDialogPath;
		findInDialog: self diff1BToA;
		exclude: self version1;
		find: ('( {1} )' format: {self version1 label});
		leftClick: 'Load changes';
		check: self version1B;
		check: self version2A.