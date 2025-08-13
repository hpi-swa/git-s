toolbuilder
buildChangesLayout: builder
	^ GSGUIUtilities buildHorizontalSplit: 0.3
		of: (self buildChangesTreePanel: builder)
		and: (self buildDynamicChangePanel: builder)
		with: builder