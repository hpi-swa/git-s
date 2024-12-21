toolbuilder
buildAssetList: builder
	^ builder pluggableListSpec new
		model: self operationLifecycle;
		list: #assetList;
		getSelected: #selectedAsset;
		setSelected: #selectedAsset:;
		yourself