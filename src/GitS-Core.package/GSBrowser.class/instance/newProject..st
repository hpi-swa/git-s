actions-working-copy
newProject: aWorkingCopy
	aWorkingCopy ifNil: [^ self].
	self activeWorkingCopy: aWorkingCopy.
	aWorkingCopy import.