toolbuilder
buildMainLayout: builder
	^ GSGUIUtilities buildVerticalSplit: 0.7
		of: (self buildUpperLayout: builder)
		and: (self buildLowerLayout: builder)
		with: builder