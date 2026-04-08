adding
addOperations: aCollection
	self addVersionChanges: (aCollection collect: [:each |
		GSVersionChange current: each baseDefinition incoming: each targetDefinition]).