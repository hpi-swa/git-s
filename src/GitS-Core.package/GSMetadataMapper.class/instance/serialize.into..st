serializing
serialize: aMetadata into: aFileSystem
	(self legacyReferencesIn: aFileSystem) do: #ensureDeleted.
	(self metadataReferenceIn: aFileSystem) writeStreamDo: [:stream |
		STON put: aMetadata onStreamPretty: stream].