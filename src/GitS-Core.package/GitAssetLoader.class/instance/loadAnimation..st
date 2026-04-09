loading
loadAnimation: aStringOrPath
	<linterIgnoreUnsent> "public API"
	self deprecated: 'Use loadGIFReadWriter: or loadAnimatedImageMorph:'.
	^ self loadGIFReadWriter: aStringOrPath