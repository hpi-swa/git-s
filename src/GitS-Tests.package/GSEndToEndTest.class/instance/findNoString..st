finding
findNoString: aString
	| matches |
	matches := self findAllString: aString.
	self assert: matches isEmpty description:
		('Expected to find no string morph containing {1}' format: {aString printString}).