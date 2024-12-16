toolbuilder
buildRefsButtons: builder
	^ GSGUIUtilities buildButtons: {
		self buildRefreshRefTreeButton: builder.
		self buildFetchAllButton: builder.
	} with: builder