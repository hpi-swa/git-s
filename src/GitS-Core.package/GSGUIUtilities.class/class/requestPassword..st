ui-manager
requestPassword: aString
	^ self wrapUIManagerForStringAnswer: [:manager |
		manager requestPassword: aString]