assets
writePlaintext: aString at: aCollection
	self installAsset: (GSEndToEndPlaintextTestVersion new
		path: aCollection;
		plaintext: aString;
		yourself).