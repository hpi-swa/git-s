class membership
respondsTo: aSelector
	^ (super respondsTo: aSelector) or: [self driver respondsTo: aSelector]