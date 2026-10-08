assets
checkNoAsset: aString at: aCollection
	self withAssetBrowser: [
		aCollection do: [:each | self toggleSubtree: each].
		self findNo: aString].