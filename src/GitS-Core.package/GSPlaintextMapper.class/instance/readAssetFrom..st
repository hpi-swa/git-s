version-io
readAssetFrom: aStream
	aStream binary.
	^ aStream contents utf8Decoded withSqueakLineEndings