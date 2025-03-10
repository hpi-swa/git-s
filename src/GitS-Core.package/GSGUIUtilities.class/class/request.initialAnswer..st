ui-manager
request: titleString initialAnswer: initialString
	^ self wrapUIManagerForStringAnswer: [:manager |
		manager request: titleString initialAnswer: initialString]