api
stop
	self mutex critical: [self isStopped: true].
	self process terminate.