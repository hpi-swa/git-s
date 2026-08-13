updating
update: anObject
	super update: anObject.
	(#(resolution isResolved) includes: anObject) ifTrue: [self triggerEvent: #canMapperBeRemoved].