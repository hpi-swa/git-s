finding
findNoMatch: aStringOrText in: aMorph
	| matches |
	matches := self findAllMatches: aStringOrText in: aMorph.
	self assert: matches isEmpty description:
		('Expected to find no string morph containing {1}' asText format: {aStringOrText printString}).