toolbuilder
buildExpressionPanel: builder
	^ (GSGUIUtilities buildHorizontalLayout: {
		self buildExpression: builder.
		self buildClearButton: builder.
		self buildSettingsButton: builder.
	} with: builder)
		verticalResizing: #shrinkWrap;
		yourself