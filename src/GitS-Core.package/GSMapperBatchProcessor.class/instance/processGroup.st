processing
processGroup
	self processBatches; processRemaining.
	self remainingGroups removeFirst.