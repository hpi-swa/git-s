actions-working-copy
newProject: aWorkingCopy
	self activeWorkingCopy: aWorkingCopy.
	self operationStarter ensureActiveOperationDuring: [aWorkingCopy import].