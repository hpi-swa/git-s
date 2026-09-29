instance creation
withMapper: aMapper versionChange: aVersionChange
	^ (self withMapper: aMapper)
		versionChange: aVersionChange;
		yourself