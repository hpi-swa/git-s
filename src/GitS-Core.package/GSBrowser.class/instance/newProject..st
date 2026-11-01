actions-working-copy
newProject: aWorkingCopy
	self activeWorkingCopy: aWorkingCopy.
	aWorkingCopy operationStarter maybeMaterializeHead.