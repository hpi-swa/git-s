loading
loadAnimatedImageMorph: aStringOrPath
	<linterIgnoreUnsent> "public API"
	^ GSAnimationMapper gifReadWriterAsMorph: (self loadGIFReadWriter: aStringOrPath)