compiling
compile: aString caseSensitive: caseSensitive
	| regex |
	regex := RxMatcher forString: aString ignoreCase: caseSensitive not.
	^ self compileRegex: regex