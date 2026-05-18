asset-creation
assetAsAssetFile: anAsset
	anAsset ifNil: [^ GSMissingAssetFile withMapper: self].
	^ GSPresentAssetFile withMapper: self asset: anAsset