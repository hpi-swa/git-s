toolbuilder
buildAssetList: builder
	^ builder pluggableListSpec new
		model: self operationStarter;
		list: #assetList;
		getSelected: #selectedAsset;
		setSelected: #selectedAsset:;
		yourself