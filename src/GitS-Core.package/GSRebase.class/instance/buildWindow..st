toolbuilder
buildWindow: builder
	^ builder pluggableWindowSpec new
		model: self operationStarter;
		label: #windowTitle;
		children: {GSGUIUtilities windowChild: (self buildLayout: builder)};
		yourself