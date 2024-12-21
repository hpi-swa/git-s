toolbuilder
buildRemoveButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationLifecycle;
		action: #actionRemove;
		label: 'Remove asset';
		yourself