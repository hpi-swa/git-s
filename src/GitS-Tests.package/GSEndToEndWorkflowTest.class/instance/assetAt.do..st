assets
assetAt: aCollection do: aBlock
	self withAssetBrowser: [
		aCollection allButLastDo: [:each |
			self toggleSubtree: each].
		self
			leftClick: aCollection last;
			do: aBlock].