actions-network
actionSetUpstreamOfBranch: aString
	self activeWorkingCopyAction: [:workingCopy |
		workingCopy actionSetUpstreamOfBranch: aString].