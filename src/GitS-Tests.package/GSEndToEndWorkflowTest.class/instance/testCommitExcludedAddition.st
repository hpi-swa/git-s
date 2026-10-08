tests
testCommitExcludedAddition
	self
		commitWithMessage: 'base commit';
		install: self version1A;
		install: self version2A;
		commitWithMessage: 'test commit'
		checking: [self
					openDialogPath;
					exclude: self version2;
					find: ('( {1} )' format: {self version2 label})];
		check: self version2A;
		leftClick: 'Commit';
		openDialogPath;
		findInDialog: self version2A;
		findNo: self version1 label.