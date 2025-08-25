toolbuilder
buildClearButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationLifecycle;
		action: #clear;
		label: 'Clear';
		horizontalResizing: #shrinkWrap;
		yourself