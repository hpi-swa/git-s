definitions-operations
addDefinition: aDefinition
	index
		definitionLike: aDefinition
		ifPresent: [:other |
			other = aDefinition
				ifFalse: [self addConflictWithCurrent: other incoming: aDefinition base: nil]]
		ifAbsent: [self addOperation: (MCAddition of: aDefinition)]