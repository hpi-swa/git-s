toolbuilder
buildCommitInfo: builder
	^ builder pluggableTextSpec new
		model: self operationLifecycle;
		getText: #activeCommitInfo;
		readOnly: true;
		yourself