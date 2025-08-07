finding
findString: aString
	| matches |
	matches := self findAllString: aString.
	self assert: 1 equals: matches size description:
		('Expected to find exactly one string morph containing {1}' format: {aString printString}).
	^ matches first value