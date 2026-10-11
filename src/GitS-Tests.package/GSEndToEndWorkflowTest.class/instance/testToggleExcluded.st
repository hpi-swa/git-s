tests
testToggleExcluded
	self
		commitWithMessage: 'base commit';
		install: self version1A;
		install: self version2A;
		commitWithMessage: 'test commit'
		checking: [self
					openDialogPath;
					exclude: self version2;
					leftClick: self versionsParentLabel;
					find: self version1 label asText allBold;
					findNo: self version2 label asText allBold;
					rightClick: self versionsParentLabel;
					leftClick: 'toggle excluded';
					findExcluded: self version1;
					findNoExcluded: self version2;
					findNo: self version1 label asText allBold;
					find: self version2 label asText allBold];
		check: self version1A;
		leftClick: 'Commit';
		openDialogPath;
		findInDialog: self version1A;
		findNo: self version2.