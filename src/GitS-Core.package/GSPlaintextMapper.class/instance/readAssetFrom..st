version-io
readAssetFrom: aStream
	aStream binary.
	^ self toPlaintext: aStream contents utf8Decoded