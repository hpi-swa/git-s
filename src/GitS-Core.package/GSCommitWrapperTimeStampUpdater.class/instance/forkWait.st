waiting
forkWait
	([self wait] forkAt: Processor userBackgroundPriority)
		name: ('commit list time stamp updater at {1}' gitSFormat: {self timeStamp}).