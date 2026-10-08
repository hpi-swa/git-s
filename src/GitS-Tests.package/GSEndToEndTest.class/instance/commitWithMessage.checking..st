operations
commitWithMessage: aString checking: aBlock
	self
		prepareCommitWithMessage: aString;
		do: aBlock;
		leftClick: 'Commit changes'.