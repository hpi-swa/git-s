compiling
compileRegex: anRxMatcher
	^ [:source | anRxMatcher search: source]