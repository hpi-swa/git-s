initialization
setItem: aRebaseCommandOrNil
	super setItem: aRebaseCommandOrNil.
	self string: (aRebaseCommandOrNil columns joinSeparatedBy: Character tab).