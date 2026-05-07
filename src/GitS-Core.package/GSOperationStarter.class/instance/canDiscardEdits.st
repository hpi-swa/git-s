accessing
canDiscardEdits
	^ self ensureActiveOperationDuring: [self driver canDiscardEdits]