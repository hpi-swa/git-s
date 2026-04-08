definitions-operations
addConflictWithCurrent: currentDefinition incoming: incomingDefinition base: baseDefinition
	^ self addConflictWithDefinitions:
		(GSVersionMerge
			current: currentDefinition
			incoming: incomingDefinition
			base: baseDefinition)