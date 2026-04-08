updating
update: anObject
	super update: anObject.
	anObject = #isResolved ifTrue: [self update: #headText].