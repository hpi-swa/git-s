instance creation
withChangeSet: aChangeSet versionChange: aVersionChange
	^ (self withChangeSet: aChangeSet)
		versionChange: aVersionChange;
		yourself