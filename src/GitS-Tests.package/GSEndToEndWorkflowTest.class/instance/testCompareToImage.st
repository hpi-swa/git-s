tests
testCompareToImage
	self
		install: self version1A;
		install: self version2A;
		commitWithMessage: 'test commit';
		install: self version1B;
		rightClick: 'test commit';
		moveTo: 'Compare';
		leftClick: 'it to the image';
		find: 'Show changes from the image to * test commit';
		openDialogPath;
		findInDialog: self diff1BToA;
		findNo: self version2 label.