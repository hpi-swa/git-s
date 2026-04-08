toolbuilder
buildButtons: builder
	^ GSGUIUtilities buildButtons: {
		self buildResolveButtons: builder.
		self buildResetToConflictButton: builder.
		self buildEditButton: builder.
	} with: builder