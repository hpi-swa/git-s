comparing
= anObject
	^ (anObject isKindOf: thisContext methodClass)
		and: [self mapper = anObject mapper]
		and: [self hexHash = anObject hexHash]