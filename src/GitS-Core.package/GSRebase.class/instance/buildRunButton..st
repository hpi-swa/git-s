toolbuilder
buildRunButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationLifecycle;
		action: #actionRun;
		label: #runLabel;
		help: 'Run the next operation.';
		yourself