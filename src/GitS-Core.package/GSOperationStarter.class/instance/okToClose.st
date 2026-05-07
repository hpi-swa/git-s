updating
okToClose
	^ self ensureActiveOperationDuring: [self driver okToClose]