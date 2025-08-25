toolbuilder
assetOrNilAsMorph: anAssetOrNil
	^ anAssetOrNil
		ifNil: [self missingMorph]
		ifNotNil: [self assetAsMorph: anAssetOrNil]