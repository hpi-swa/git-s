finding
find: anObject in: aMorph
	(anObject isKindOf: GSEndToEndTarget) ifTrue: [^ anObject].
	(self isMatchable: anObject) ifTrue: [^ self findMatch: anObject in: aMorph].
	anObject isMorph ifTrue: [^ self findMorph: anObject].
	self error: 'Unknown target'.