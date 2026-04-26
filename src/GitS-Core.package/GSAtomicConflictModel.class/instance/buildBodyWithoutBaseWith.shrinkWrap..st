toolbuilder
buildBodyWithoutBaseWith: builder shrinkWrap: aBoolean
	^ GSGUIUtilities buildVerticalLayout: {
		GSGUIUtilities buildHorizontalLayout: {
			self buildDynamic: #current label: 'Current:' with: builder.
			self buildDynamic: #incoming label: 'Incoming:' with: builder.
		} with: builder.
		self buildResolutionPanelWith: builder.
	} shrinkWrap: aBoolean with: builder