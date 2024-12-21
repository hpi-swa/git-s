toolbuilder
buildAddOperationButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationLifecycle;
		action: #actionAddOperation;
		label: 'Add';
		help: 'Add a new operation after the active operation.';
		yourself