toolbuilder
buildExpression: builder
	^ builder pluggableCodePaneSpec new
		model: self operationStarter;
		getText: #expression;
		editText: #expression:;
		help: 'Filter commits';
		verticalResizing: #shrinkWrap;
		softLineWrap: true;
		yourself