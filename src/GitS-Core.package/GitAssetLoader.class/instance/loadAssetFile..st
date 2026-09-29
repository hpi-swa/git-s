loading
loadAssetFile: aStringOrPath
	| path assetFile pathString |
	path := self nameToPath: aStringOrPath.
	assetFile := self assetFileAt: path.
	pathString := GSPathUtilities asString: path.
	self
		assert: assetFile gitSIsMissing not
		description: ('Did not find an asset at {1}' format: {pathString}).
	self
		assert: (assetFile mapper notNil and: [assetFile mapper isTracked])
		description: ('The asset at {1} is currently inferred. Mark it as tracked in the Git Asset Browser.'
						format: {pathString}).
	^ assetFile