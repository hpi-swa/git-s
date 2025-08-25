updating
update: anObject
	super update: anObject.
	anObject = self activeMode ifTrue: [self recompile].
	anObject = self scope ifTrue: [self regenerate].
	self forwardChanged: anObject.