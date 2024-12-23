toolbuilder
buildRefsButtons: builder
	^ GSGUIUtilities buildButtons: {
		self buildRefreshButton: builder.
		self buildFetchAllButton: builder.
	} with: builder