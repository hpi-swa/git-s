ui-manager
chooseFileMatching: aString
	^ self wrapUIManagerForNonNilAnswer: [:manager |
		manager chooseFileMatching: aString]