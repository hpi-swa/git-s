operations
renameProjectTo: aString
	self
		rightClick: self projectName;
		moveTo: 'Organize it';
		do: [self leftClick: 'Rename it']
		supplyingAnswer: {'Rename project *'. aString};
		projectName: aString.