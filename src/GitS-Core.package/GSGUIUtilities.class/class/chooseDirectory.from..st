ui-manager
chooseDirectory: titleString from: aDirectory
	^ self wrapUIManagerForNonNilAnswer: [:manager |
		manager chooseDirectory: titleString from: aDirectory]