actions
actionSwitchToCommit: aCommit
	self activeWorkingCopyAction: [:workingCopy |
		workingCopy actionSwitchToCommit: aCommit].