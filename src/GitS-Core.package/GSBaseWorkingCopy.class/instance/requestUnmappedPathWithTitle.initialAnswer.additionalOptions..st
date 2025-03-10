paths
requestUnmappedPathWithTitle: aString initialAnswer: aPath additionalOptions: aCollection
	^ self
		getUnmappedPathFrom:
			(GSPathUtilities
				requestAbsolute: aString
				initialAnswer: aPath)
		withTitle: aString
		additionalOptions: aCollection