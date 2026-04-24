toolbuilder
buildSelectedAssetName: builder
	^ builder pluggableTextSpec new
		model: self operationStarter;
		getText: #selectedAssetName;
		readOnly: true;
		verticalResizing: #shrinkWrap;
		yourself