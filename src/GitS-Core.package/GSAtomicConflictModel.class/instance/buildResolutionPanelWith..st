toolbuilder
buildResolutionPanelWith: builder
	^ GSGUIUtilities buildVerticalSplit: 0.6
		of: (self
				buildDynamic: #resolution
				label: 'Resolution:'
				includeResolve: false
				with: builder)
		and: self workspace
		with: builder