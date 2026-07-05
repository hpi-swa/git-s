toolbuilder
buildDialogWith: builder
	^ builder pluggableDialogSpec new
		model: self operationStarter;
		title: self title;
		children: {self buildWindowChild: builder};
		buttons: (self buildButtons: builder);
		extent: 700 px @ 450 px;
		yourself