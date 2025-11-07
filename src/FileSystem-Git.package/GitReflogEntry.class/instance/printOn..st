printing
printOn: aStream
	aStream
		nextPutAll: self previousHexHash;
		space;
		nextPutAll: self nextHexHash;
		space;
		print: self stamp;
		tab;
		nextPutAll: self message.