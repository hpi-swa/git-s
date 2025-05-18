refs
allReferencesAndSymbolicRefTargets
	^ self allReferences gather: [:each | | ref |
		ref := self unitOfWork ref: each.
		ref isSymbolic ifTrue: [{each. ref targetRef}] ifFalse: [{each}]]