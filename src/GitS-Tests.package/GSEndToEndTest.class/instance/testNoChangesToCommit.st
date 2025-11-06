tests
testNoChangesToCommit
	self
		newProject;
		do: [self leftClick: 'Commit']
		suppressingMessage: 'No changes to commit.';
		declareClass;
		trackCode;
		commitWithMessage: 'Test commit';
		do: [self leftClick: 'Commit']
		suppressingMessage: 'No changes to commit.'.