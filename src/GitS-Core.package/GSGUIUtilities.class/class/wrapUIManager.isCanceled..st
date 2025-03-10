ui-manager
wrapUIManager: requestBlock isCanceled: checkCanceledBlock
	| answer |
	answer := requestBlock value: UIManager default.
	(checkCanceledBlock value: answer) ifTrue: [self cancel].
	^ answer