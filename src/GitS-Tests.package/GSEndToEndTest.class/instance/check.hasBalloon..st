finding
check: anObject hasBalloon: aStringOrText
	| match balloonText |
	match := self find: anObject.
	self moveTo: match.
	balloonText := (match morph withAllOwners collect: [:each | each balloonText])
		detect: #notNil
		ifNone: [self assert: false description: ('Found no balloon text on {1}' format: {anObject})].
	self
		assert: ((self matcherFor: aStringOrText) value: balloonText)
		description: ('Balloon text {1} of {2} does not match {3}'
						format: {balloonText printString. anObject. aStringOrText printString}).