provided answers
askForProvidedAnswerTo: aString default: anObject
	| answer |
	answer := self askForProvidedAnswerTo: aString.
	^ answer = #default ifTrue: [anObject] ifFalse: [answer]