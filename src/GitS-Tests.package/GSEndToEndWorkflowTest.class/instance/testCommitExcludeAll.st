tests
testCommitExcludeAll
	self
		commitWithMessage: 'base commit';
		install: self version1A;
		install: self version2A;
		commitWithMessage: 'test commit'
		checking: [self
					openDialogPath;
					exclude: self version2;
					leftClick: self versionsParentLabel;
					findNo: self version2 label;
					rightClick: self versionsParentLabel;
					leftClick: 'exclude all (x)';
					find: ('( {1} )' format: {self versionsParentLabel});
					find: ('( {1} )' format: {self version1 label});
					find: ('( {1} )' format: {self version2 label});
					find: self version1 label asText allBold;
					find: self version2 label asText allBold;
					rightClick: ('( {1} )' format: {self versionsParentLabel});
					leftClick: 'include all (x)';
					findNo: ('( {1} )' format: {self version1 label});
					findNo: ('( {1} )' format: {self version2 label});
					find: self version1 label asText allBold;
					find: self version2 label asText allBold];
		check: self version2A;
		find: 'test commit';
		do: [self leftClick: 'Commit']
		suppressingMessage: 'No changes to commit.'.