migrations
importMapperFromLegacyAsset: anAsset at: aPath
	(anAsset isKindOf: GSAssetFile) ifTrue: [^ anAsset mapper].
	(self isOldAnimationAsset: anAsset) ifTrue: [^ GSAnimationMapper new path: aPath; yourself].
	^ (GSAssetMapper allSubclasses collect: [:each | each new path: aPath; yourself])
		detect: [:mapper | mapper isValidAsset: anAsset]
		ifNone: [
			self inform:
				('Could not import asset at {1}. An inspector will open on the asset
				and it will not be imported.'
					gitSFormat: {GSPathUtilities asString: aPath}).
			anAsset inspect.
			nil]