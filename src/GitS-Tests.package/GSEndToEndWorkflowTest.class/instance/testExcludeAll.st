tests
testExcludeAll
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
					leftClick: 'exclude all (x)';
					findExcluded: self versionsParentLabel;
					findExcluded: self version1;
					findExcluded: self version2;
					find: self version1 label asText allBold;
					find: self version2 label asText allBold;
					rightClick: (self excludedLabel: self versionsParentLabel);
					leftClick: 'include all (x)';
					findNoExcluded: self versionsParentLabel;
					findNoExcluded: self version1;
					findNoExcluded: self version2;
					find: self version1 label asText allBold;
					find: self version2 label asText allBold];
		check: self version2A;
		find: 'test commit';
		do: [self leftClick: 'Commit']
		suppressingMessage: 'No changes to commit.'.