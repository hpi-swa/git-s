assets
trackAssetsOfType: typeString
	self versions do: [:each |
		self trackAssetOfType: typeString at: each path].