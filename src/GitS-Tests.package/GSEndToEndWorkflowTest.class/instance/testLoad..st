tests
testLoad: labelString
	self
		install: self version1A;
		install: self version2A;
		commitWithMessage: 'test commit';
		install: self version1B;
		install: self version3A;
		rightClick: labelString;
		leftClick: 'Load it';
		find: 'Load commit * test commit';
		openDialogPath;
		findInDialog: self diff1BToA;
		findNo: self version2A label;
		findInDialog: self version3A;
		leftClick: 'Load changes';
		check: self version1A;
		check: self version2A;
		checkUninstalled: self version3.