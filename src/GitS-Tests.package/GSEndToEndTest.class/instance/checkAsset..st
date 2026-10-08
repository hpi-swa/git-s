assets
checkAsset: anEndToEndAssetTestVersion
	self assetAt: anEndToEndAssetTestVersion path do: [
		self
			find: (self expressionToFindable: anEndToEndAssetTestVersion expression)
			in: (self findWindowContaining: 'Git Asset Browser')].