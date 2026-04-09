loading
loadString: aStringOrPath
	<linterIgnoreUnsent> "public API"
	^ String newFrom: (self loadPlaintext: aStringOrPath)