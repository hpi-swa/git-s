toolbuilder
buildRefsPanel: builder
	^ GSGUIUtilities buildVerticalLayout: {
		self buildRefTree: builder.
		self buildRefsButtons: builder.
	} with: builder