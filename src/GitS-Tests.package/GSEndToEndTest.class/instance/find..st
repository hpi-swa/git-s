finding
find: anObject
	(anObject isKindOf: GSEndToEndTarget) ifTrue: [^ anObject].
	(anObject isString or: [anObject isText]) ifTrue: [^ self findMatch: anObject].
	anObject isMorph ifTrue: [^ self findMorph: anObject].
	self error: 'Unknown target'.