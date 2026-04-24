toolbuilder
buildRunButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationStarter;
		action: #actionRun;
		label: #runLabel;
		help: 'Run the next operation.';
		yourself