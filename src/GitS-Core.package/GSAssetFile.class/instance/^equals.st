comparing
= anObject
	^ self class == anObject class
		and: [self mapper = anObject mapper]
		and: [self contents = anObject contents]