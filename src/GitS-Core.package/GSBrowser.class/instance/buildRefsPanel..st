toolbuilder
buildRefsPanel: builder
	^ GSGUIUtilities buildVerticalLayout: {
		self buildRefList: builder.
		self buildRefsButtons: builder.
	} with: builder