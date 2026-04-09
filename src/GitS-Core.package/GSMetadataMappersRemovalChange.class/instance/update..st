updating
update: anObject
	super update: anObject.
	anObject = #canMapperBeRemoved ifTrue: [self updateIsExcludedSilently: false].