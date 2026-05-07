updating
update: anObject with: anotherObject
	super update: anObject with: anotherObject.
	self changed: anObject with: anotherObject.