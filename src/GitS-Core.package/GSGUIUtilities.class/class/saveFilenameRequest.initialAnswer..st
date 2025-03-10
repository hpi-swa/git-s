ui-manager
saveFilenameRequest: titleString initialAnswer: initialString
	^ self wrapUIManagerForNonNilAnswer: [:manager |
		manager saveFilenameRequest: titleString initialAnswer: initialString]