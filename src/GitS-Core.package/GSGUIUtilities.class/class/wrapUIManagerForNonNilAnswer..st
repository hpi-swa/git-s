ui-manager
wrapUIManagerForNonNilAnswer: requestBlock
	^ self wrapUIManager: requestBlock isCanceled: #isNil