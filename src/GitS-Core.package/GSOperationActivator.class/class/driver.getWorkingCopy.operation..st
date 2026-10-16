instance creation
driver: anObject getWorkingCopy: aSymbol operation: anOperation
	^ (self driver: anObject getWorkingCopy: aSymbol)
		operation: anOperation;
		yourself