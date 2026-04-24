toolbuilder
buildAddButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationStarter;
		action: #actionAdd;
		label: 'Add empty asset';
		yourself