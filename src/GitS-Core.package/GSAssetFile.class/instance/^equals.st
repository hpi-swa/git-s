comparing
= anObject
	^ (anObject class isKindOf: thisContext methodClass)
		and: [self mapper = anObject mapper]
		and: [self hexHash = anObject hexHash]