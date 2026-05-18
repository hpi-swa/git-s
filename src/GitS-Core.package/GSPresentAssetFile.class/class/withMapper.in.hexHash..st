instance creation
withMapper: aMapper in: aRepository hexHash: aString
	^ (self withMapper: aMapper)
		storage: (GSLazyAssetFileStorage in: aRepository hexHash: aString);
		yourself