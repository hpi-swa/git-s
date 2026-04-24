accessing
workingCopy: aWorkingCopy
	workingCopy := aWorkingCopy.
	self
		originalHeadCommit: self currentHeadCommit;
		doRegularCommit;
		operation: self workingCopy activeOperation.