toolbuilder
buildRefreshRefTreeButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationLifecycle;
		action: #actionRefreshRefTree;
		label: 'Refresh';
		yourself