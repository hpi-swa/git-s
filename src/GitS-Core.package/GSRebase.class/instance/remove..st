commands
remove: aRebaseCommand
	aRebaseCommand = self nextCommand ifTrue: [self continueBlock: nil].
	self commands remove: aRebaseCommand.
	self commandsChanged.