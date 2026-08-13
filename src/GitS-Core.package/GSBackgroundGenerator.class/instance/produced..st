lifecycle
produced: anObject
	self mutex critical: [
		self buffer addLast: anObject.
		self goalReached ifTrue: [self wakeUpSemaphore signal]].