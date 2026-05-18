toolbuilder
buildButtons: builder
	^ GSGUIUtilities buildButtons: {
		self buildImportFileButton: builder.
		self buildImportDirectoryButton: builder.
		self buildAddButton: builder.
		self buildMoveButton: builder.
		self buildRemoveButton: builder.
	} with: builder