instance creation
on: aDirectory select: aBlock
	^ self new
		directory: aDirectory;
		selectBlock: aBlock;
		yourself