toolbuilder
buildLayoutWith: builder
	^ GSGUIUtilities buildVerticalLayout: {
		self buildTextWith: builder.
		self buildShowAllCheckBoxWith: builder.
	} with: builder