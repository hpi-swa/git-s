assets
removeAssetAt: aCollection
	self assetAt: aCollection do: [
		self
			do: [self leftClick: 'Remove asset']
			supplyingAnswer: #('Really remove asset *?' true)].