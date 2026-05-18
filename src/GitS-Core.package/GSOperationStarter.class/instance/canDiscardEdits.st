accessing
canDiscardEdits
	^ self ensureActiveOperationDuring: [
		(self driver dependents gather: [:each |
			(each isKindOf: self class) ifTrue: [each dependents] ifFalse: [{each}]])
				allSatisfy: #canDiscardEdits]