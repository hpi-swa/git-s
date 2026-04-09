accessing
assetPaths
	<linterIgnoreUnsent> "public API"
	^ self assetFSPaths collect: [:each | GSPathUtilities asString: each]