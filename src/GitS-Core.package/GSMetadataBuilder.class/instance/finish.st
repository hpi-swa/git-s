building
finish
	self bumpMapperVersionsIfNecessary.
	self metadataToWrite: self metadataToWrite withoutInferredMappers.
	self metadataToWrite setCurrentVersion.
	^ self metadataToWrite