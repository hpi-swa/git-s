storing
storeCompressedOn: aStream
	| zip |
	zip := ZLibWriteStream on: aStream.
	[self storeByteSignatureOn: zip]
		ensure: [zip finish].