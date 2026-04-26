toolbuilder
buildBodyWithBaseWith: builder
	^ GSGUIUtilities buildVerticalLayout: {
		GSGUIUtilities buildHorizontalLayout: {
			self buildDynamic: #base label: 'Base:' with: builder.
			self buildDynamic: #current label: 'Current:' with: builder.
		} with: builder.
		GSGUIUtilities buildHorizontalLayout: {
			self buildDynamic: #incoming label: 'Incoming:' with: builder.
			self buildResolutionPanelWith: builder.
		} with: builder.
	} with: builder