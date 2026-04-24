toolbuilder
buildEditRemoteButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationStarter;
		action: #actionEditRemote;
		enabled: #hasSelectedRemote;
		label: 'Edit remote';
		yourself