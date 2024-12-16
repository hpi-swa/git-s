adding
createRef: aString
	^ GSRefWrapper new
		parent: self;
		workingCopy: self workingCopy;
		label: (self relative: aString);
		ref: aString;
		yourself