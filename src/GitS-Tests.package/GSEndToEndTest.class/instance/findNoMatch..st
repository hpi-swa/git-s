finding
findNoMatch: aStringOrText
	| matches |
	matches := self findAllMatches: aStringOrText.
	self assert: matches isEmpty description:
		('Expected to find no string morph containing {1}' asText format: {aStringOrText printString}).