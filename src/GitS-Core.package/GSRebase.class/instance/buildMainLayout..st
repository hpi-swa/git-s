toolbuilder
buildMainLayout: builder
	^ GSGUIUtilities
		buildHorizontalSplit: 0.6
		of: (self buildOperations: builder)
		and: (self buildChangesDialog: builder)
		with: builder 