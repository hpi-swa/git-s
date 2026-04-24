toolbuilder
buildClearButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationStarter;
		action: #clear;
		label: 'Clear';
		horizontalResizing: #shrinkWrap;
		yourself