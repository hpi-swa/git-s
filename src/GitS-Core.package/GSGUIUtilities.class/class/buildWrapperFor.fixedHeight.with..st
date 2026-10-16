toolbuilder
buildWrapperFor: aPluggableWidgetSpec fixedHeight: aNumber with: builder
	^ builder pluggablePanelSpec new
		layout: #proportional;
		children: {aPluggableWidgetSpec
					frame: (self layoutFrameForFixedHeight: aNumber);
					"for ProportionalLayout>>#minExtentOf:in: to work properly"
					minimumHeight: aNumber;
					yourself};
		yourself