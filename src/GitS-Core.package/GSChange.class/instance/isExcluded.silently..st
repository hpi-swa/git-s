accessing
isExcluded: excludedBoolean silently: silentBoolean
	self
		basicIsExcluded: excludedBoolean;
		changed: #isExcludedSilently: with: silentBoolean.
	silentBoolean ifFalse: [self changed: #isExcluded].