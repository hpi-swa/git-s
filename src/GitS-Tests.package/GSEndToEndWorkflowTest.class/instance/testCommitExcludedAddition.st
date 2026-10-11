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
					findExcluded: self version2];
		check: self version2A;
		leftClick: 'Commit';
		openDialogPath;
		findInDialog: self version2A;
		findNo: self version1.