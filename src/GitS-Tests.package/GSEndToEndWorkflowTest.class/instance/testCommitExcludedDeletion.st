tests
testCommitExcludedDeletion
	self
		install: self version1A;
		commitWithMessage: 'base commit';
		uninstall: self version1;
		install: self version2A;
		commitWithMessage: 'test commit'
		checking: [self
					openDialogPath;
					exclude: self version1;
					find: (self excludedLabel: self version1 label)];
		checkUninstalled: self version1;
		leftClick: 'Commit';
		openDialogPath;
		findInDialog: self version1A;
		findNo: self version2 label.