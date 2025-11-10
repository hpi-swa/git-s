tests
testCompareToParentCommit
	self
		install: self version1A;
		install: self version2A;
		commitWithMessage: 'first commit';
		install: self version1B;
		commitWithMessage: 'second commit';
		rightClick: '* second commit';
		moveTo: 'Compare it to';
		leftClick: 'its parent commit';
		find: 'Show changes from * first commit to * second commit';
		openDialogPath;
		findInDialog: self diff1AToB;
		findNo: self version2A label.