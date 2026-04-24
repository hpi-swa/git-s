commands
add: aRebaseCommand
	aRebaseCommand rebase: self.
	self activeCommand
		ifNil: [self commands addFirst: aRebaseCommand]
		ifNotNil: [:active | self commands add: aRebaseCommand after: active].
	self commandsChanged.