testing
canReadAssetFrom: aStream
	^ self encoding caseOf: {
		[self class wavEncoding] -> [SampledSound canReadWAVStream: aStream].
		[self class aiffEncoding] -> [SampledSound canReadAIFFStream: aStream].
	}