updating
windowIsClosing
	^ self ensureActiveOperationDuring: [self driver windowIsClosing]