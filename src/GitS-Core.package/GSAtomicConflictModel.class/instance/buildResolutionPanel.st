toolbuilder
buildResolutionPanel
	^ GSGUIUtilities buildVerticalSplit: 0.6
		of: (self
				buildDynamic: #resolution:
				label: 'Resolution:'
				includeResolve: false)
		and: self workspace
		with: self builder