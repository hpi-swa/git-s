testing
canDecode: aStream
	"assume that any index which is not version 2 is versino 1. 
	There is no mechanism for easily checking version 1 indices apart from
	manually reassembling the different tables and running it through SHA1"
	^ (self isVersion2: aStream) not