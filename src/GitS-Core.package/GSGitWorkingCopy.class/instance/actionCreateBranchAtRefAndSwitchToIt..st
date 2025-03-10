actions-branches
actionCreateBranchAtRefAndSwitchToIt: aString
	self actionSwitchToBranch: (self actionCreateBranchAtRef: aString).