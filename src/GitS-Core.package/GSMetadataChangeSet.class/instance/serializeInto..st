operations
serializeInto: aFileSystem
	| metadataToWrite |
	metadataToWrite := self metadataToWrite.
	(metadataToWrite equalsIncludingMapperVersions: self currentMetadata withoutUntrackedMappers) ifTrue: [^ self].
	self mapper serialize: metadataToWrite into: aFileSystem.