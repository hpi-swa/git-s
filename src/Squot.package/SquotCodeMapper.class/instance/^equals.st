comparing
= anObject
	^ super = anObject
		and: [self path = anObject path]
		and: [self package = anObject package]