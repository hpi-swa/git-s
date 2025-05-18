finding
find: anObject
	(anObject isKindOf: GSEndToEndTarget) ifTrue: [^ anObject].
	anObject isString ifTrue: [^ self findString: anObject].
	anObject isMorph ifTrue: [^ self findMorph: anObject].
	self error: 'Unknown target'.