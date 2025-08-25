compiling
compileRegex: anRxMatcher
	^ [:source | anRxMatcher matches: source]