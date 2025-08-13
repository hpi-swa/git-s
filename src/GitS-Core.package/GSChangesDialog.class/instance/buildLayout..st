toolbuilder
buildLayout: builder
	(self hasButtons: #bottom) ifFalse: [^ self buildMainLayout: builder].
	^ GSGUIUtilities buildVerticalLayout: {
		self buildMainLayout: builder.
		self buildButtons: #bottom with: builder.
	} with: builder