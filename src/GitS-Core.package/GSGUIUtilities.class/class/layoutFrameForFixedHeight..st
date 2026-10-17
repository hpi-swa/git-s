toolbuilder
layoutFrameForFixedHeight: aNumber
	^ LayoutFrame
		fractions: (0 @ 0 extent: 1 @ 0)
		offsets: (0 @ 0 extent: 0 @ aNumber)