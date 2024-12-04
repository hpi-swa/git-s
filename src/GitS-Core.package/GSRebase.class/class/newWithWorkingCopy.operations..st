instance creation
newWithWorkingCopy: aWorkingCopy operations: aCollection
	^ self new
		workingCopy: aWorkingCopy;
		addAll: aCollection;
		yourself