toolbuilder
buildWrapperFor: aPluggableWidgetSpec fixedHeight: aNumber with: builder
	^ builder pluggablePanelSpec new
		layout: #proportional;
		children: {aPluggableWidgetSpec
					frame: (self layoutFrameForFixedHeight: aNumber);
					yourself};
		verticalResizing: #shrinkWrap;
		yourself