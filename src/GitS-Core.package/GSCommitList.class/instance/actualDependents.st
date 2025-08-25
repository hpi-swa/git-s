ui
actualDependents
	^ self dependents gather: [:each |
		(each isKindOf: GSOperationLifecycle)
			ifTrue: [each dependents]
			ifFalse: [{each}]]