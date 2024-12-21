toolbuilder
buildPullButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationLifecycle;
		action: #actionPull;
		label: 'Pull';
		help: 'Pull into the head branch.';
		yourself