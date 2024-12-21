instance creation
driver: anObject getWorkingCopy: aSymbol
	^ self new
		driver: anObject;
		workingCopySelector: aSymbol;
		yourself