toolbuilder
buildStatusText: builder
	^ builder pluggableTextSpec new
		model: self operationStarter;
		getText: #statusText;
		readOnly: true;
		yourself