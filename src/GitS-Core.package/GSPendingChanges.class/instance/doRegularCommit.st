configuring
doRegularCommit
	self parents: ({self originalHeadCommit} reject: #isNil).