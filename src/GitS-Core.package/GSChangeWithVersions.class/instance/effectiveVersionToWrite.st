accessing
effectiveVersionToWrite
	^ self isExcluded ifTrue: [self current] ifFalse: [self versionToWrite]