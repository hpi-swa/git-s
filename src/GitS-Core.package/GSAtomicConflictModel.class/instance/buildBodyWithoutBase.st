toolbuilder
buildBodyWithoutBase
	^ GSGUIUtilities buildVerticalSplit: 0.5
		of: (GSGUIUtilities buildHorizontalSplit: 0.5
				of: (self buildDynamic: #current label: 'Current:')
				and: (self buildDynamic: #incoming label: 'Incoming:')
				with: builder)
		and: self buildResolutionPanel
		with: builder