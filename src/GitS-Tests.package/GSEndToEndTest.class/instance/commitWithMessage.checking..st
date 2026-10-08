operations
commitWithMessage: aString checking: aBlock
	self
		leftClick: 'Commit';
		do: aBlock;
		leftClick: 'message';
		type: aString;
		leftClick: 'Commit changes'.