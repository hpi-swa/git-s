serializing
serializeInto: aFileSystem at: aPath
	(aFileSystem referenceTo: aPath) writeStreamDo: [:stream | stream nextPutAll: self contents].