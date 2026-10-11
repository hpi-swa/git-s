tests
testCommitExcludedModification
	self
		install: self version1A;
		commitWithMessage: 'base commit';
		install: self version1B;
		install: self version2A;
		commitWithMessage: 'test commit'
		checking: [self
					openDialogPath;
					exclude: self version1;
					findExcluded: self version1];
		check: self version1B;
		leftClick: 'Commit';
		openDialogPath;
		findInDialog: self diff1AToB;
		findNo: self version2.