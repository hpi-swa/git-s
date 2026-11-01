storing
byteSignatureOn: aStream withData: aByteArray
	"tree entries have no header"
	aStream nextPutAll: aByteArray.