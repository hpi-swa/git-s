tests
testCompareImageToCommit
	self
		install: self version1A;
		install: self version2A;
		commitWithMessage: 'test commit';
		install: self version1B;
		rightClick: 'test commit';
		moveTo: 'Compare';
		leftClick: 'the image to it';
		find: 'Show changes from * test commit to the image';
		openDialogPath;
		findInDialog: self diff1AToB;
		findNo: self version2A label.