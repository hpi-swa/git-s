toolbuilder
buildButtons: aCollection spacing: aNumberOrNil with: builder
	^ self
		buildWrapperFor: (builder pluggablePanelSpec new
								layout: #horizontal;
								children: (self children: aCollection);
								spacing: aNumberOrNil;
								yourself)
		fixedHeight: builder buttonRowHeight
		with: builder