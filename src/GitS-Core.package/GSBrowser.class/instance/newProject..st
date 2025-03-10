actions-working-copy
newProject: aWorkingCopy
	self
		activeWorkingCopy: aWorkingCopy;
		withUnitOfWork: [aWorkingCopy import].