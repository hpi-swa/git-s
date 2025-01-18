toolbuilder
buildDialogWith: builder
	^ builder pluggableDialogSpec new
		model: self;
		title: self title;
		children: {GSGUIUtilities windowChild: (self buildLayout: builder)};
		buttons: (self buildButtons: builder);
		yourself