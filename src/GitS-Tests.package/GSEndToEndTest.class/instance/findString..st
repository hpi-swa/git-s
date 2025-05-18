finding
findString: aString
	| matches |
	matches := OrderedCollection streamContents: [:stream |
		self world allMorphsDo: [:each | each gitSPutMatchedTargetsOf: aString on: stream]].
	self assert: 1 equals: matches size description:
		('Expected to find exactly one string morph containing {1}' format: {aString printString}).
	^ matches first value