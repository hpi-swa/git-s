toolbuilder
buildPushButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationLifecycle;
		action: #actionPush;
		label: 'Push';
		help: 'Push the active ref to a remote.';
		yourself