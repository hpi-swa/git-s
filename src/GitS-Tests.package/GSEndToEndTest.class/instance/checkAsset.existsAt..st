assets
checkAsset: aString existsAt: aCollection
	self withAssetBrowser: [
		aCollection do: [:each | self toggleSubtree: each].
		self find: aString].