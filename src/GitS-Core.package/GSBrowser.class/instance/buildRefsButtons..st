toolbuilder
buildRefsButtons: builder
	^ GSGUIUtilities buildButtons: {
		self buildRefreshRefListButton: builder.
		self buildFetchAllButton: builder.
	} with: builder