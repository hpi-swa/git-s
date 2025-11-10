assets
expressionToFindable: aString
	^ (Compiler evaluate: aString) ifNil: ['Missing']