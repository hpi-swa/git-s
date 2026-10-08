instance creation
withMapper: aMapper versionChange: aVersionChange builder: aMetadataBuilder
	^ (self withMapper: aMapper)
		metadataBuilder: aMetadataBuilder;
		versionChange: aVersionChange;
		yourself