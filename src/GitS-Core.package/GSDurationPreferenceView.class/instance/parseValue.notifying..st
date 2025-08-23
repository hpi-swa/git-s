user interface
parseValue: aString notifying: requestor
	[^ Duration fromString: aString] ifError: [].
	^ Compiler evaluate: aString for: requestor