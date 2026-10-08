assets
markAssetTrackedAt: aCollection
	self assetAt: aCollection do: [
		self leftClick: 'Mark asset tracked'].