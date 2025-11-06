operations
newProject
	self
		openBrowser;
		rightClick: 'Right click here';
		moveTo: 'Add project';
		do: [self leftClick: 'New on disk']
		supplyingAnswers: {
			{'Project name:'. self projectName}.
			{'Repository location:'. FileSystem memory / 'Test'}}.