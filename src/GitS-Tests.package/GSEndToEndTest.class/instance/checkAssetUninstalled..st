assets
checkAssetUninstalled: anEndToEndAssetTestVersion
	self assert: anEndToEndAssetTestVersion isMissing.
	self checkAsset: anEndToEndAssetTestVersion.