toolbuilder
buildRemoveRemoteButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationLifecycle;
		action: #actionRemoveRemote;
		enabled: #hasSelectedRemote;
		label: 'Remove remote';
		yourself