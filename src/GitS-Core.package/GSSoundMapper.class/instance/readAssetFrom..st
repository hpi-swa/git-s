version-io
readAssetFrom: aStream
	^ self encoding caseOf: {
		[self class wavEncoding] -> [SampledSound fromWAVStream: aStream].
		[self class aiffEncoding] -> [SampledSound fromAIFFStream: aStream].
	}