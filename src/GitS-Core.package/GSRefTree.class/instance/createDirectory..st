adding
createDirectory: aString 
	^ GSRefDirectory new
		parent: self;
		workingCopy: self workingCopy;
		ref: aString;
		yourself