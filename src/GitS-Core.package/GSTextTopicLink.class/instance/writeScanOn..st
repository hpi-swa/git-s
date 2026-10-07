fileIn/fileOut
writeScanOn: aStream
	aStream
		nextPut: self class scanCharacter;
		nextPutAll: self topic.
	self heading ifNotNil: [
		aStream
			nextPut: $:;
			nextPutAll: self heading].
	aStream nextPut: $;.