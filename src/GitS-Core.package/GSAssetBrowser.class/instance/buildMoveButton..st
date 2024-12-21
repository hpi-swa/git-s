toolbuilder
buildMoveButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationLifecycle;
		action: #actionMove;
		label: 'Move asset';
		yourself