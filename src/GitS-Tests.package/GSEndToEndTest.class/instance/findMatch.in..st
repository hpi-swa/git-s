finding
findMatch: aStringOrText in: aMorph
	| matches |
	matches := self findAllMatches: aStringOrText in: aMorph.
	self assert: 1 equals: matches size description:
		('Expected to find exactly one string morph containing {1}' asText format: {aStringOrText printString}).
	^ matches first value