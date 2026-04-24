error handling
doesNotUnderstand: aMessage
	^ self ensureActiveOperationDuring: [aMessage sendTo: self driver]