toolbuilder
buildWindow: builder
	^ builder pluggableWindowSpec new
		model: self operationStarter;
		children: {GSGUIUtilities windowChild: (self buildLayout: builder)};
		label: #windowTitle;
		yourself