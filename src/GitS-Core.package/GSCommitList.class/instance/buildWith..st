toolbuilder
buildWith: builder
	^ GSGUIUtilities buildVerticalLayout: {
		self buildCommits: builder.
		self buildExpressionPanel: builder.
	} with: builder