accessing
workingCopy: aWorkingCopy
	super workingCopy: aWorkingCopy.
	self
		originalHeadCommit: self currentHeadCommit;
		doRegularCommit.