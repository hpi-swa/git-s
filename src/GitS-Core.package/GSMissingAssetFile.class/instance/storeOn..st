printing
storeOn: aString
	aString
		nextPut: $(;
		nextPutAll: self class name;
		nextPutAll: ' withMapper: ';
		store: self mapper;
		nextPut: $).