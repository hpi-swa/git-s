actions
actionsForAncestorTree: aChangesTree withChanges: aCollection
	^ (aCollection groupBy: #mapper) associations gather: [:each |
		each key actionsForChangesAncestorTree: aChangesTree withChanges: each value]