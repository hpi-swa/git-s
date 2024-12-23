toolbuilder
buildRefreshButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationLifecycle;
		action: #actionRefresh;
		label: 'Refresh';
		yourself