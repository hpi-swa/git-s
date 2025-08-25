accessing
isActive: aBoolean
	self basicIsActive: aBoolean.
	self patternMode changed.