toolbuilder
buildChangesTreePanel: builder
	(self hasButtons: #changesTree) ifFalse: [^ self buildChangesTree: builder].
	^ GSGUIUtilities buildVerticalLayout: {
		self buildChangesTree: builder.
		self buildButtons: #changesTree with: builder.
	} with: builder