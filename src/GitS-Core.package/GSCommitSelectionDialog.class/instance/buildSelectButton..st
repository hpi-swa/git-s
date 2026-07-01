toolbuilder
buildSelectButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationStarter;
		action: #actionSelect;
		label: 'Select commit';
		yourself