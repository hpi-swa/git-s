ui requests
confirm: aString orCancel: cancelBlock
	| answer |
	answer := self askForProvidedAnswerTo: aString.
	^ answer = #cancel
		ifTrue: [cancelBlock value]
		ifFalse: [answer]