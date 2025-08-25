toolbuilder
buildExpression: builder
	^ builder pluggableCodePaneSpec new
		model: self;
		getText: #expression;
		editText: #basicExpression:;
		setText: #expression:notifying:;
		help: 'Filter commits';
		verticalResizing: #shrinkWrap;
		softLineWrap: true;
		yourself