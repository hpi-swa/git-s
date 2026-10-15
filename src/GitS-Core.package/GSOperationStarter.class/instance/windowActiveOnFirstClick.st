user interface
windowActiveOnFirstClick
	^ self ensureActiveOperationDuring: [self driver windowActiveOnFirstClick]