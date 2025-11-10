assets
assetAt: aString do: aBlock
	self withAssetBrowser: [
		self
			leftClick: aString;
			do: aBlock].