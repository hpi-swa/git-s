ui requests
chooseFrom: labelList values: valueList lines: linesArray title: aString
	| answer |
	answer := self askForProvidedAnswerTo: aString.
	answer = #cancel ifTrue: [^ nil].
	^ valueList at: (labelList indexOf: answer) ifAbsent: [
		answer isNumber 
			ifTrue: [valueList at: answer ifAbsent: [nil]]
			ifFalse: [nil]]