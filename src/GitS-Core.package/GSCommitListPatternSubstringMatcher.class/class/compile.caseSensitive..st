compiling
compile: aString caseSensitive: caseSensitive
	^ [:source | source includesSubstring: aString caseSensitive: caseSensitive]