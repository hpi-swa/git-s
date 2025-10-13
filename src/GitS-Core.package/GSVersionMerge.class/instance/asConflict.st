converting
asConflict
	^ GSVersionConflict new
		current: self current;
		incoming: self incoming;
		base: self base;
		yourself