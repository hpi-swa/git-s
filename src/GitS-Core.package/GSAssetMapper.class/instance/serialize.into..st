serializing
serialize: anAssetFile into: aFileSystem
	| reference |
	reference := aFileSystem referenceTo: self path.
	anAssetFile ifNil: [^ reference delete].
	reference writeStreamDo: [:stream | stream nextPutAll: anAssetFile contents].