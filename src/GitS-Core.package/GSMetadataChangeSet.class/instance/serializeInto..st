operations
serializeInto: aFileSystem
	| newMetadata |
	newMetadata := self newMetadata.
	(newMetadata equalsIncludingMapperVersions: self oldMetadata) ifTrue: [^ self].
	(self legacyReferencesIn: aFileSystem) do: #ensureDeleted.
	(self metadataReferenceIn: aFileSystem) writeStreamDo: [:stream |
		STON put: newMetadata onStreamPretty: stream].