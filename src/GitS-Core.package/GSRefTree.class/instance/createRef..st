adding
createRef: aString
	^ GSRefWrapper new
		parent: self;
		workingCopy: self workingCopy;
		ref: aString;
		yourself