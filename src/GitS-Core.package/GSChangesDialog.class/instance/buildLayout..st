toolbuilder
buildLayout: builder
	^ GSGUIUtilities buildVerticalLayout: {
		self buildSubtitle: builder.
		self buildMainLayout: builder.
		self buildButtons: #bottom with: builder.
	} with: builder