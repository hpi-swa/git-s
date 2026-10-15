compiling
compileExpressionNotifying: aRequestor
	^ (Compiler new
		compileNoPattern: self expression
		in: self receiverClass
		notifying: aRequestor
		ifFail: [^ [:commit | false]])
			generateWithTempNames