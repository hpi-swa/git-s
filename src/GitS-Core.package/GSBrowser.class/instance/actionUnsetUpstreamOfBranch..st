actions
actionUnsetUpstreamOfBranch: aString
	self activeWorkingCopyAction: [:workingCopy |
		workingCopy actionUnsetUpstreamOfBranch: aString].