toolbuilder
buildWith: builder shrinkWrap: aBoolean
	^ GSGUIUtilities buildVerticalLayout: {
		self buildHeadWith: builder.
		self buildBodyWith: builder shrinkWrap: aBoolean.
	} shrinkWrap: aBoolean with: builder