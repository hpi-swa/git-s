ui requests
chooseFrom: aList lines: linesArray title: aString
	| answer |
	answer := self askForProvidedAnswerTo: aString.
	answer = #cancel ifTrue: [^ 0].
	answer := aList indexOf: answer.
	self deny: 0 equals: answer description: 'The dialog did not include the expected answer'.
	^ answer