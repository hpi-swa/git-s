initialization
initialize
	super initialize.
	self
		morphicLayerNumber: self class progressLayer;
		borderStyle: DashedBorder new;
		lock.