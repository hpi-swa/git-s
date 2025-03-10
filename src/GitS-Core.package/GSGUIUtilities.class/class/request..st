ui-manager
request: aString
	^ self wrapUIManagerForStringAnswer: [:manager |
		manager request: aString]