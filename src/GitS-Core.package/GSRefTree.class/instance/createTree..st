adding
createTree: aString
	^ GSRefTree new
		parent: self;
		workingCopy: self workingCopy;
		label: (aString ifEmpty: [''] ifNotEmpty: [self relative: aString allButLast]);
		ref: aString;
		yourself