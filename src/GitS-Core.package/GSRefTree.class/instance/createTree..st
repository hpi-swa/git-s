adding
createTree: aString
	^ GSRefTree new
		parent: self;
		workingCopy: self workingCopy;
		ref: aString;
		yourself