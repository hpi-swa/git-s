operations
serializeInto: aFileSystem
	| metadataToWrite |
	metadataToWrite := self metadataToWrite.
	(metadataToWrite equalsIncludingMapperVersions: self currentMetadata) ifTrue: [^ self].
	(self legacyReferencesIn: aFileSystem) do: #ensureDeleted.
	(self metadataReferenceIn: aFileSystem) writeStreamDo: [:stream |
		STON put: metadataToWrite onStreamPretty: stream].