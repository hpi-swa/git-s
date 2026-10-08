instance creation
changesFromMappers: aCollection builder: aMetadataBuilder metadataMapper: aMapper
	^ (aCollection select: #isTracked) collect: [:each |
		(self withMapper: aMapper)
			metadataBuilder: aMetadataBuilder;
			changedMapper: each;
			yourself]