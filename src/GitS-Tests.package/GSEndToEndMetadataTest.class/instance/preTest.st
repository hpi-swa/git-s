running
preTest
	super preTest.
	self
		projectName: nil;
		newProject;
		trackPlaintextAt: #('assets' 'kept.txt');
		installPlaintext: 'initial' at: #('assets' 'kept.txt').