updating
update: anObject
	super update: anObject.
	anObject = #isRemoval ifTrue: [self updateIsExcludedSilently: false].