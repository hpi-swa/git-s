compiling
compileNotifying: requestor
	| method workingCopy |
	method := (Compiler new
					compileNoPattern: self expression
					in: self receiverClass
					notifying: requestor
					ifFail: [^ self defaultBlock])
						generate.
	workingCopy := self activeWorkingCopy.
	^ [:commit | | answer model |
		model := self modelClass new
					workingCopy: workingCopy;
					commit: commit;
					yourself.
		answer := method valueWithReceiver: model arguments: #().
		answer isBoolean ifFalse: [self error: 'The filter expression should evaluate to a Boolean'].
		answer]