processing
processRemaining: anObject
	self
		advanceProgressBarBy: 1
		label: (self remainingLabelBlock value: anObject)
		during: [anObject perform: self remainingSelector withArguments: self extraArguments].