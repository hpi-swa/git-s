toolbuilder
buildCommitInfo: builder
	^ builder pluggableTextSpec new
		model: self operationStarter;
		getText: #activeCommitInfo;
		readOnly: true;
		yourself