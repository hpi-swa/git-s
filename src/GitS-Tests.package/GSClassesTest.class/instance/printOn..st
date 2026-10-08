printing
printOn: aStream
	aStream
		nextPutAll: self className;
		nextPut: $(;
		print: self classToBeTested;
		nextPut: $).
	self selector ifNotNil: [
		aStream
			nextPutAll: '>>#';
			nextPutAll: self selector].