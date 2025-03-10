requests
requestAbsolute: aString initialAnswer: aPath
	^ self fromString:
		(GSGUIUtilities
			request: aString
			initialAnswer: (self asString: aPath))