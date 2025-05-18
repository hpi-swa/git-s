operations
newProject
	self
		openBrowser;
		rightClick: 'Right click here';
		moveTo: 'New project'.
	[self leftClick: 'From disk'] valueSupplyingAnswers: {
		{'Project name:'. self projectName}.
		{'Repository location:'. FileSystem memory / 'Test'}}.