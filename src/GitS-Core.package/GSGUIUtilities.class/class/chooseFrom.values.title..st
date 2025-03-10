ui-manager
chooseFrom: labelCollection values: valueCollection title: aString
	^ self
		wrapUIManager: [:manager |
			manager
				chooseFrom: labelCollection
				values: valueCollection
				title: aString]
		isCanceled: [:answer |
			answer isNil and: [(valueCollection includes: nil) not]]