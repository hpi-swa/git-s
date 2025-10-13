instance creation
withMapper: aMapper currentMetadata: aMetadata propertyChangeSets: aCollection
	^ (self withMapper: aMapper)
		currentMetadata: aMetadata;
		propertyChangeSets: aCollection;
		yourself