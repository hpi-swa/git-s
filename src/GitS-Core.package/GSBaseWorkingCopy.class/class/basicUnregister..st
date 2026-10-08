registering
basicUnregister: aWorkingCopy
	self registry keysAndValuesRemove: [:workingCopyName :workingCopy | workingCopy = aWorkingCopy].