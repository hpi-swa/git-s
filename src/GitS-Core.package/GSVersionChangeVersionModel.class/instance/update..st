updating
update: anObject
	super update: anObject.
	({#isResolved. #resolution. self versionSelector} includes: anObject)
		ifTrue: [self changed: #isResolvedToThis].