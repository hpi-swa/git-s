instance creation
withMapper: aMapper contents: aByteArray
	^ (self withMapper: aMapper)
		contents: aByteArray;
		yourself