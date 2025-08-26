pattern
pattern: aString
	^ (self compilePattern: aString) value: self commit