tests
testEmptyCommitMessage
	self
		setupCode;
		do: [self commitWithMessage: '']
		suppressingMessage: 'Empty message, aborting.'.