tests
testCommit
	self
		install: self version1A;
		commitWithMessage: 'Test commit'
		checking: [self
					openDialogPath;
					findInDialog: self version1A].