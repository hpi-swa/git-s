toolbuilder
buildBodyWithBase
	^ GSGUIUtilities buildVerticalLayout: {
		GSGUIUtilities buildHorizontalLayout: {
			self buildDynamic: #base label: 'Base:'.
			self buildDynamic: #current label: 'Current:'.
		} with: self builder.
		GSGUIUtilities buildHorizontalLayout: {
			self buildDynamic: #incoming label: 'Incoming:'.
			self buildResolutionPanel.
		} with: self builder.
	} with: self builder