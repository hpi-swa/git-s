accessing
ancestor: aNumber
	^ self ancestors atLast: aNumber ifAbsent: [nil]