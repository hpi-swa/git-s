asset-creation
loadAssetFileFromFileSystem: aFileSystem
	| reference |
	reference := self referenceIn: aFileSystem.
	reference isFile ifFalse: [^ GSMissingAssetFile withMapper: self].
	reference readStreamDo: [:stream | self readAssetFrom: stream]. "check for errors (will be thrown)"
	^ reference readStreamDo: [:stream | GSPresentAssetFile withMapper: self fromStream: stream]