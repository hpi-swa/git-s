commands
replace: aRebaseCommand with: anotherRebaseCommand
	self commands
		at: (self commands indexOf: aRebaseCommand)
		put: anotherRebaseCommand.
	self commandsChanged.