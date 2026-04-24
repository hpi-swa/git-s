accessing
canAbort
	^ self hasStarted and: [self commands notEmpty]