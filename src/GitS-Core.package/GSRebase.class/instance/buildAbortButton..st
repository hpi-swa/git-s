toolbuilder
buildAbortButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationLifecycle;
		action: #actionAbort;
		label: 'Abort';
		help: 'Abort the rebase and reset to the state before it started.';
		yourself