commands
addAll: aCollection
	aCollection do: [:each | each rebase: self].
	self commands addAll: aCollection.
	self commandsChanged.