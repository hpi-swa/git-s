dependents
actualDependentsOf: anObject
	^ anObject dependents gather: [:each |
		(each isKindOf: GSOperationStarter)
			ifTrue: [each dependents]
			ifFalse: [{each}]]