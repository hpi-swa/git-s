toolbuilder
buildRemoveButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationStarter;
		action: #actionRemove;
		label: 'Remove asset';
		yourself