compiling
compileNotifying: requestor
	self hasExpression ifFalse: [^ self defaultBlock].
	^ self activeMode compileNotifying: requestor