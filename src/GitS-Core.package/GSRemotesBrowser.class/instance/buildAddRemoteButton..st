toolbuilder
buildAddRemoteButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationLifecycle;
		action: #actionAddRemote;
		label: 'Add remote';
		yourself