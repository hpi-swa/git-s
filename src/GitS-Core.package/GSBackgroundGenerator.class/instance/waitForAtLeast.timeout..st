api
waitForAtLeast: goalInteger timeout: aDuration
	self mutex critical: [
		self goal: goalInteger.
		self goalReached ifTrue: [self clearGoal. ^ self consumeAll]].
	self boostProcessPriorityAndWaitWithTimeout: aDuration.
	^ self mutex critical: [self clearGoal. self consumeAll]