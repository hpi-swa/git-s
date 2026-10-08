assets
uninstallAsset: anEndToEndAssetTestVersion
	self assert: anEndToEndAssetTestVersion isMissing.
	self installAsset: anEndToEndAssetTestVersion.