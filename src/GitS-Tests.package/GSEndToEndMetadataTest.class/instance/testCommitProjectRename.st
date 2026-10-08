tests
testCommitProjectRename
	self
		commitWithMessage: 'base commit';
		renameProjectTo: 'RenamedProject';
		commitWithMessage: 'rename project' checking: [
			self
				openDialogPath;
				leftClick: 'Project name';
				find: 'Test\RenamedProject' withCRs];
		check: 'rename project' hasBalloon: 'Latest commit of main*'.