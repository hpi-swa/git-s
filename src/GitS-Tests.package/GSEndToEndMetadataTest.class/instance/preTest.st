running
preTest
	super preTest.
	self
		newProject;
		trackPlaintextAt: #('assets' 'kept.txt').