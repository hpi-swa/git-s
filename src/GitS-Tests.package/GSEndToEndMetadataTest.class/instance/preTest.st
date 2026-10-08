running
preTest
	super preTest.
	self
		projectName: nil;
		newProject;
		trackPlaintextAt: #('assets' 'kept.txt').