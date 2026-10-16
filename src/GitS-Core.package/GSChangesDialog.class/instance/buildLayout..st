toolbuilder
buildLayout: builder
	^ GSGUIUtilities buildVerticalLayout: {
		self buildSubtitle: builder.
		self buildMainLayout: builder.
		self buildButtonsAt: #bottom with: builder.
	} with: builder