pattern
compilePattern: aString
	^ self compiledPatterns at: aString ifAbsentPut: [self basicCompilePattern: aString]