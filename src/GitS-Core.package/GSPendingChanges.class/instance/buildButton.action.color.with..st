actions-private
buildButton: aString action: actionSymbol color: colorSymbol with: builder
	^ builder pluggableButtonSpec new
		model: self operationStarter;
		action: actionSymbol;
		label: aString;
		color: colorSymbol;
		yourself