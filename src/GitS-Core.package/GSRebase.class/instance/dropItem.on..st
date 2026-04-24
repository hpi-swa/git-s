events
dropItem: aRebaseCommand on: anotherRebaseCommand
	aRebaseCommand == anotherRebaseCommand ifTrue: [^ self].
	self commands remove: aRebaseCommand ifAbsent: [].
	anotherRebaseCommand isHeader
		ifTrue: [self commands addFirst: aRebaseCommand]
		ifFalse: [self commands add: aRebaseCommand after: anotherRebaseCommand].
	self commandsChanged.