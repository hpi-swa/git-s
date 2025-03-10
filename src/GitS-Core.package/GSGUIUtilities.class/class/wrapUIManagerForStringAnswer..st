ui-manager
wrapUIManagerForStringAnswer: requestBlock
	^ self wrapUIManager: requestBlock isCanceled: #isEmptyOrNil