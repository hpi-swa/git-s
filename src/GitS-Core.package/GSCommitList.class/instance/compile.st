compiling
compile
	self hasExpression ifFalse: [^ self defaultBlock].
	^ self activeMode compile