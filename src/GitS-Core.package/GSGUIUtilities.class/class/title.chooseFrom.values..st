ui-manager
title: aString chooseFrom: labelCollection values: valueCollection
	^ self
		wrapUIManager: [:manager |
			manager chooseFrom: labelCollection values: valueCollection title: aString]
		isCanceled: [:answer |
			answer isNil and: [(valueCollection includes: nil) not]]