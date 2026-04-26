toolbuilder
buildWith: builder shrinkWrap: aBoolean
	^ GSGUIUtilities buildVerticalLayout: {
		self buildHeader: builder.
		self buildTexts: builder.
		self buildButtons: builder.
	} shrinkWrap: aBoolean with: builder