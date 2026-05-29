serializing
serializeInto: aFileSystem
	(self referenceIn: aFileSystem) writeStreamDo: [:stream | stream nextPutAll: self contents].