operations
renameProjectTo: aString
	self
		rightClick: self projectName;
		moveTo: 'Organize it';
		do: [self leftClick: 'Rename it']
		supplyingAnswer: {'Rename project {1}. Beware that *. New name:' format: {self projectName printString}. aString};
		findNo: self projectName;
		projectName: aString;
		find: self projectName.