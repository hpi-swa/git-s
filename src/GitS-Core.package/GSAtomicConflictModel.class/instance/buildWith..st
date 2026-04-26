toolbuilder
buildWith: builder
	^ GSGUIUtilities buildVerticalLayout: {
		self buildHeadWith: builder.
		self buildBodyWith: builder.
	} with: builder