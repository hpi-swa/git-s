instance creation
withChange: aChange version: anObject
	^ self new
		change: aChange;
		version: anObject;
		yourself