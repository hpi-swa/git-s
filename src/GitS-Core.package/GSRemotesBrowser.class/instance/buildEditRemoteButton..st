toolbuilder
buildEditRemoteButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationLifecycle;
		action: #actionEditRemote;
		enabled: #hasSelectedRemote;
		label: 'Edit remote';
		yourself