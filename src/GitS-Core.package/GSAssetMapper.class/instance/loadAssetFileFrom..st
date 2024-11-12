asset-creation
loadAssetFileFrom: aFileSystem
	| reference |
	reference := self referenceIn: aFileSystem.
	reference isFile ifFalse: [^ nil].
	^ reference readStreamDo: [:stream |
		(self canReadAssetFrom: stream) ifFalse: [^ nil].
		GSAssetFile withMapper: self fromStream: stream]