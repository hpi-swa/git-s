tests
testBrowserOpenLoadsCommitList
	self
		install: self version1A;
		commitWithMessage: 'initial commit';
		closeWindowContaining: 'Git Browser';
		openBrowser;
		find: 'initial commit'.