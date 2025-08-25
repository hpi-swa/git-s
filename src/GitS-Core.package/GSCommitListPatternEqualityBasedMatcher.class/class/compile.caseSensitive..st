compiling
compile: aString caseSensitive: aBoolean
	^ [:source | (self transform: source for: aString) ifNil: [false] ifNotNil: [:transformed |
			(transformed compare: aString caseSensitive: aBoolean) = 2]]