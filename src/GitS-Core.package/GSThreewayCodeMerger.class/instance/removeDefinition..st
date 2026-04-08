definitions-operations
removeDefinition: aDefinition
	index
		definitionLike: aDefinition
		ifPresent: [:other |
			other = aDefinition
				ifTrue: [self addOperation: (MCRemoval of: aDefinition)]
				ifFalse: [self addConflictWithCurrent: other incoming: nil base: aDefinition]]
		ifAbsent: []