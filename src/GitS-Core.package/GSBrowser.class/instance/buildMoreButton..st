toolbuilder
buildMoreButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationStarter;
		action: #actionMore;
		label: 'More';
		help: 'Open a menu to perform other tasks.';
		yourself