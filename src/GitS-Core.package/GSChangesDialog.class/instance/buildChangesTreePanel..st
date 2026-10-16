toolbuilder
buildChangesTreePanel: builder
	(self hasButtonsAt: #changesTree) ifFalse: [^ self buildChangesTree: builder].
	^ GSGUIUtilities buildVerticalLayout: {
		self buildChangesTree: builder.
		self buildButtonsAt: #changesTree with: builder.
	} with: builder