toolbuilder
buildAddRemoteButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationStarter;
		action: #actionAddRemote;
		label: 'Add remote';
		yourself