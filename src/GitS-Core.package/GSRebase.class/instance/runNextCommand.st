running
runNextCommand
	self commands ifEmpty: [self done. ^ false].
	^ self handleCommandResult: self nextCommand run