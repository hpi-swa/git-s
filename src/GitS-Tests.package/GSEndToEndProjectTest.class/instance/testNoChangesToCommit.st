tests
testNoChangesToCommit
	self
		newProject;
		do: [self leftClick: 'Commit']
		suppressingMessage: 'No changes to commit.'.