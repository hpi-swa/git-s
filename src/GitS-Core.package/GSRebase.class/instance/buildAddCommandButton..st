toolbuilder
buildAddCommandButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationStarter;
		action: #actionAddCommand;
		label: 'Add';
		help: 'Add a new command after the active command.';
		yourself