toolbuilder
buildRemoveRemoteButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationStarter;
		action: #actionRemoveRemote;
		enabled: #hasSelectedRemote;
		label: 'Remove remote';
		yourself