updating
update: anObject with: anotherObject
	super update: anObject.
	anObject = #isExcludedSilently: ifTrue: [self updateIsExcludedSilently: anotherObject].