operations
serializeInto: aFileSystem
	| metadataToWrite |
	metadataToWrite := self metadataToWrite.
	(metadataToWrite equalsIncludingMapperVersions: self currentMetadata) ifTrue: [^ self].
	self mapper serialize: metadataToWrite into: aFileSystem.