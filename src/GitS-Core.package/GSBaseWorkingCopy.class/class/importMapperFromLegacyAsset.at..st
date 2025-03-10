migrations
importMapperFromLegacyAsset: anAsset at: aPath
	(anAsset isKindOf: GSAssetFile) ifTrue: [^ anAsset mapper].
	^ (GSAssetMapper allSubclasses collect: [:each | each new path: aPath; yourself])
		detect: [:mapper | mapper canMigrateMaterialized: anAsset]
		ifNone: [
			self inform:
				('Could not import asset at {1}. An inspector will open on the asset
				and it will not be imported.'
					gitSFormat: {GSPathUtilities asString: aPath}).
			anAsset inspect.
			nil]