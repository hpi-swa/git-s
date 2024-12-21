toolbuilder
buildAddButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationLifecycle;
		action: #actionAdd;
		label: 'Add empty asset';
		yourself