processing
processBatch: aCollection using: anObject
	self
		advanceProgressBarBy: aCollection size
		label: (self batchLabelBlock value: anObject)
		during: [anObject
					perform: self batchSelector
					withArguments: (self extraArguments copyWithFirst: aCollection)]