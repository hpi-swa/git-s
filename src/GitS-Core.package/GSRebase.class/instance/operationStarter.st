accessing
operationStarter
	^ GSOperationActivator
		driver: self
		getWorkingCopy: #workingCopy
		operation: self operation