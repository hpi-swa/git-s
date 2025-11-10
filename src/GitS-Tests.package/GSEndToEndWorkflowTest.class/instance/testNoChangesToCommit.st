tests
testNoChangesToCommit
	self
		commitWithMessage: 'Test commit';
		do: [self leftClick: 'Commit']
		suppressingMessage: 'No changes to commit.'.