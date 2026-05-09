version-io
writeAsset: aString on: aStream
	aStream nextPutAll: aString withUnixLineEndings utf8Encoded.