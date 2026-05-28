migrations
turningAsset: anObject toAssetFileFailedWith: aMapper
	self inform:
		'Found unrecognized object in place of materialized asset.
		An inspector will open and the asset will be marked as ''missing''.' gitSFormat.
	anObject inspect.
	^ GSMissingAssetFile withMapper: aMapper