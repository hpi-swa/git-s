toolbuilder
buildUpperLayout: builder
	^ GSGUIUtilities buildHorizontalSplit: 0.2
		of: (self buildUpperLeftPanel: builder)
		and: (self buildCommitList: builder)
		with: builder