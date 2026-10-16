toolbuilder
buildButtons: aCollection spacing: aNumberOrNil with: builder
	^ (self buildRefreshablePanel: [
		self
			buildWrapperFor: (builder pluggablePanelSpec new
									layout: #horizontal;
									children: (self children: aCollection);
									spacing: aNumberOrNil;
									yourself)
			fixedHeight: builder buttonRowHeight
			with: builder]
		on: #userInterfaceTheme
		with: builder)
			verticalResizing: #shrinkWrap;
			yourself