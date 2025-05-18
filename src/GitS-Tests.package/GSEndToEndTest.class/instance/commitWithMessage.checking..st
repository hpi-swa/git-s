operations
commitWithMessage: aString checking: aBlock
	self leftClick: 'Commit'.
	aBlock value.
	self
		leftClick: 'message';
		type: aString;
		leftClick: 'Commit changes'.