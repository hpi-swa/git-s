updating
update: anObject with: anotherObject
	super update: anObject with: anotherObject.
	anObject = #isExcludedSilently: ifTrue: [self updateIsExcludedSilently: anotherObject].