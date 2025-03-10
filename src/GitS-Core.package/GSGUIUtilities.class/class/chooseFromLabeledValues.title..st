ui-manager
chooseFromLabeledValues: aDictionary title: aString
	^ self
		wrapUIManager: [:manager |
			manager chooseFromLabeledValues: aDictionary title: aString]
		isCanceled: [:answer |
			answer isNil and: [(aDictionary values includes: nil) not]]