configuring
parentsForRegularCommit
	^ {self originalHeadCommit} reject: #isNil