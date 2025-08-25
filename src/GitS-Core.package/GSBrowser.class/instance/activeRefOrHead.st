accessing
activeRefOrHead
	^ self activeRef ifNil: [self activeWorkingCopy ifNotNil: #headRefName]