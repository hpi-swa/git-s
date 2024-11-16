asset-creation
loadAssetFileFrom: aFileSystem
	| reference |
	reference := self referenceIn: aFileSystem.
	reference isFile ifFalse: [^ nil].
	^ reference readStreamDo: [:stream |
		self readAssetFrom: stream. "check for errors (will be thrown)"
		stream reset.
		GSAssetFile withMapper: self fromStream: stream]