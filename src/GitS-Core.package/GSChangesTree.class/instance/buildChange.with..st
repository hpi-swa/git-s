toolbuilder
buildChange: aChange with: builder
	^ GSGUIUtilities buildVerticalLayout: {
		self buildChangePath: aChange with: builder.
		aChange buildWith: builder shrinkWrap: true.
	} shrinkWrap: true with: builder