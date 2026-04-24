toolbuilder
buildButtons: builder
	^ GSGUIUtilities buildButtons: {
		self buildAddCommandButton: builder.
		self buildAbortButton: builder.
		self buildRunButton: builder.
	} with: builder