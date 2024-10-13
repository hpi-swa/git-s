version-io
writeAsset: aSound on: aStream
	self encoding caseOf: {
		[self class wavEncoding] -> [aSound storeWAVSamplesOn: aStream].
		[self class aiffEncoding] -> [aSound storeAIFFSamplesOn: aStream].
	}.