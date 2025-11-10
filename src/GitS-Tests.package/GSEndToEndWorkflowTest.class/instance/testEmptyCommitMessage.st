tests
testEmptyCommitMessage
	self
		do: [self commitWithMessage: '']
		suppressingMessage: 'Empty message, aborting.'.