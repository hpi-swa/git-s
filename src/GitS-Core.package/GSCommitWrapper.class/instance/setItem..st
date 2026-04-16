initialization
setItem: aCommit
	super setItem: aCommit.
	self
		rememberWorkingCopy;
		updateString.