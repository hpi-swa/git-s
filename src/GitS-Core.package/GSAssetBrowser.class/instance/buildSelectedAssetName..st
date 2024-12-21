toolbuilder
buildSelectedAssetName: builder
	^ builder pluggableTextSpec new
		model: self operationLifecycle;
		getText: #selectedAssetName;
		readOnly: true;
		verticalResizing: #shrinkWrap;
		yourself