tests
testCommitTwice
	self
		install: self version1A;
		commitWithMessage: 'first commit'
		checking: [self
					openDialogPath;
					findInDialog: self version1A];
		install: self version1B;
		commitWithMessage: 'second commit'
		checking: [self
					openDialogPath;
					findInDialog: self diff1AToB].