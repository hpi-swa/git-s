toolbuilder
buildAssetSelectionPanel: builder
	^ GSGUIUtilities buildVerticalLayout: {
		self buildAssetTree: builder.
		self buildSelectedAssetName: builder.
	} with: builder