compiling
compile
	| method model |
	method := [self compileExpressionNotifying: (GSErrorRequestor for: self expression)]
						on: ParserNotification
						do: [:notification | notification signal: notification getName]
						on: Error, ParserNotification
						do: [:error |
							self addError: ('{1} (click to fix)' format: {error}) onClick: [
								self compileExpressionWithRequestor].
							^ [:commit | false]].
	model := self createModel.
	^ [:commit | | answer |
		model commit: commit.
		answer := method valueWithReceiver: model arguments: #().
		answer isBoolean ifFalse: [self error: 'The filter expression should evaluate to a Boolean'].
		answer]