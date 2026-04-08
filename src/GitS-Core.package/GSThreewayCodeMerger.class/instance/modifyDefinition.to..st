definitions-operations
modifyDefinition: baseDefinition to: targetDefinition
	index
		definitionLike: baseDefinition
		ifPresent: [:other |
			other = baseDefinition
				ifTrue: [self addOperation: (MCModification of: baseDefinition to: targetDefinition)]
				ifFalse: [other = targetDefinition
							ifFalse: [self addConflictWithCurrent: other incoming: targetDefinition base: baseDefinition]]]
		ifAbsent: [self addConflictWithCurrent: nil incoming: targetDefinition base: baseDefinition]