instance creation
newWithCurrentMetadata: aMetadata mapperChanges: aDictionary
	^ self new
		currentMetadata: aMetadata;
		mapperChanges: aDictionary;
		yourself