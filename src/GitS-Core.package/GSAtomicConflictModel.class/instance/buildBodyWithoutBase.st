toolbuilder
buildBodyWithoutBase
	^ GSGUIUtilities buildVerticalLayout: {
		GSGUIUtilities buildHorizontalLayout: {
			self buildDynamic: #current label: 'Current:'.
			self buildDynamic: #incoming label: 'Incoming:'.
		} with: builder.
		self buildResolutionPanel.
	} with: builder