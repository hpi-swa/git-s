asset-creation
assetAsAssetFile: anAsset
	anAsset ifNil: [^ GSMissingAssetFile withMapper: self].
	^ GSLoadedAssetFile withMapper: self asset: anAsset