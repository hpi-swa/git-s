instance creation
newWithWorkingCopy: aWorkingCopy commands: aCollection
	^ self new
		workingCopy: aWorkingCopy;
		addAll: aCollection;
		yourself