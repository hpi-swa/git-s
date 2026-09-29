instance creation
changesWithMapper: aMapper operations: operationCollection conflicts: conflictCollection
	^ self
		changesWithMapper: aMapper
		versionChanges: conflictCollection, (operationCollection collect: [:each |
			GSVersionChange current: each baseDefinition incoming: each targetDefinition])