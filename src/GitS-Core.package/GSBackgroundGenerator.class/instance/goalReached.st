lifecycle
goalReached
	^ self isStopped or: [self buffer size >= self goal]