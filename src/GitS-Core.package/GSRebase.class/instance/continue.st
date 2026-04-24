running
continue
	| result |
	result := self continueBlock value.
	self
		continueBlock: nil;
		handleDelayedCommandResult: result.