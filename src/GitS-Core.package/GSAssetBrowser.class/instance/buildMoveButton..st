toolbuilder
buildMoveButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationStarter;
		action: #actionMove;
		label: 'Move asset';
		yourself