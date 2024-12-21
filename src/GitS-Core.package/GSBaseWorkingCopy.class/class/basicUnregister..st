registering
basicUnregister: aWorkingCopy
	self registry keysAndValuesRemove: [:name :workingCopy | workingCopy = aWorkingCopy].