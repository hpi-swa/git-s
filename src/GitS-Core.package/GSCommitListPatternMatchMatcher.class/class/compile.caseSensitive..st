compiling
compile: aString caseSensitive: caseSensitive
	^ [:source | aString gitSMatch: source caseSensitive: caseSensitive]