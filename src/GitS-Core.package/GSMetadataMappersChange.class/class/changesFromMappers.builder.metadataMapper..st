instance creation
changesFromMappers: aCollection builder: aMetadataBuilder metadataMapper: aMapper
	^ (aCollection select: #isTracked) collect: [:each |
		(self withMapper: aMapper)
			changedMapper: each;
			metadataBuilder: aMetadataBuilder;
			yourself]