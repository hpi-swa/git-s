provided answers
askForProvidedAnswerTo: aString
	self askForProvidedAnswerTo: aString ifSupplied: [:answer | ^ answer].
	self error: ('Unexpected interaction: {1}' format: {aString printString}).