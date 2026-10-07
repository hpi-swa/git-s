fileIn/fileOut
writeScanOn: aStream
	aStream
		nextPut: self class scanCharacter;
		nextPutAll: self key;
		nextPut: $;.