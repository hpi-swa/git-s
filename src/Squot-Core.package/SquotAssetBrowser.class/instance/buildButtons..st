toolbuilder
buildButtons: builder
	^ SquotGUIUtilities buildButtons: {
		self buildImportFileButton: builder.
		self buildImportDirectoryButton: builder.
		self buildImportUnmappedFilesButton: builder.
		self buildAddButton: builder.
		self buildMoveButton: builder.
		self buildRemoveButton: builder.
	} with: builder