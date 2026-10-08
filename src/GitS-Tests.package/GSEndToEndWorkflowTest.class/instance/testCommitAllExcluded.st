tests
testCommitAllExcluded
	self
		commitWithMessage: 'base commit';
		install: self version1A;
		do: [self
				commitWithMessage: 'test commit'
				checking: [self
							openDialogPath;
							exclude: self version1;
							find: (self excludedLabel: self version1 label)]]
		suppressingMessage: 'No changes to commit. Include at least one change.';
		include: self version1;
		leftClick: 'Commit changes';
		check: self version1A;
		find: 'test commit';
		do: [self leftClick: 'Commit']
		suppressingMessage: 'No changes to commit.'.