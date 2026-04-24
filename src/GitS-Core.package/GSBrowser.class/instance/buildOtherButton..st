toolbuilder
buildOtherButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationStarter;
		action: #actionOther;
		label: '...';
		help: 'Open a menu to perform other tasks.';
		yourself