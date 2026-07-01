toolbuilder
buildRefreshButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationStarter;
		action: #actionRefresh;
		label: 'Refresh';
		yourself