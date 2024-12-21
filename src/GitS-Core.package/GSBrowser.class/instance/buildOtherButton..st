toolbuilder
buildOtherButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationLifecycle;
		action: #actionOther;
		label: '...';
		help: 'Open a menu to perform other tasks.';
		yourself