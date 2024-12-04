accessing
message
	^ self keepCurrentMessage
		ifTrue: [self commit message]
		ifFalse: [self workingCopy headCommit message]