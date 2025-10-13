updating
update: anObject
	super update: anObject.
	anObject = self versionSelector ifTrue: [self changed: #buildChild].