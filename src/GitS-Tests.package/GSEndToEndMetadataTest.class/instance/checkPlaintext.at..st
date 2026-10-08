assets
checkPlaintext: aString at: aCollection
	self checkAsset: (GSEndToEndPlaintextTestVersion new
		path: aCollection;
		plaintext: aString;
		yourself).