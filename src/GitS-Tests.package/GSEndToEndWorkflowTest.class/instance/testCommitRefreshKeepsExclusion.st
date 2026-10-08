tests
testCommitRefreshKeepsExclusion
	self
		commitWithMessage: 'base commit';
		install: self version2A;
		commitWithMessage: 'test commit'
		checking: [self
					openDialogPath;
					exclude: self version2;
					inWindowContaining: 'Git Browser'
					do: [self install: self version3A];
					leftClick: (self
								find: 'Refresh'
								in: (self findWindowContaining: 'Commit changes'));
					find: (self excludedLabel: self version2 label);
					findInDialog: self version3A];
		check: self version2A;
		leftClick: 'Commit';
		openDialogPath;
		findInDialog: self version2A;
		findNo: self version3 label.