operations
newProject
	self
		openBrowser;
		rightClick: 'Right click here';
		moveTo: 'Add project'.
	[self leftClick: 'New on disk'] valueSupplyingAnswers: {
		{'Project name:'. self projectName}.
		{'Repository location:'. FileSystem memory / 'Test'}}.