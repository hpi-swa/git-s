updating
update: anObject
	super update: anObject.
	(anObject = #resolution or: [anObject = #isResolved]) ifTrue: [self changed: #isRemoval].