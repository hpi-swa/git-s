instance creation
withMapper: aMapper contents: aByteArray
	^ (self withMapper: aMapper)
		storage: (GSLoadedAssetFileStorage withContents: aByteArray);
		yourself