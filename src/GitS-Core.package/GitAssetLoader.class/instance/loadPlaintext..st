loading
loadPlaintext: aStringOrPath
	<linterIgnoreUnsent> "public API"
	self deprecated: 'Use loadString:'.
	^ self loadString: aStringOrPath