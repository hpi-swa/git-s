lifecycle
finished
	self mutex critical: [self isStopped: true].
	self wakeUpSemaphore signal.