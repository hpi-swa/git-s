compiling
compileNotifying: requestor
	| method model |
	method := (Compiler new
					compileNoPattern: self expression
					in: self receiverClass
					notifying: requestor
					ifFail: [^ self defaultBlock])
						generate.
	model := self createModel.
	^ [:commit | | answer |
		model commit: commit.
		answer := method valueWithReceiver: model arguments: #().
		answer isBoolean ifFalse: [self error: 'The filter expression should evaluate to a Boolean'].
		answer]