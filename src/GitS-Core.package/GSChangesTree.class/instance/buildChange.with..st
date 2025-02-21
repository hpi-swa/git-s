toolbuilder
buildChange: aChange with: builder
	^ GSGUIUtilities buildVerticalLayout: {
		self buildChangePath: aChange with: builder.
		aChange buildWith: builder.
	} with: builder