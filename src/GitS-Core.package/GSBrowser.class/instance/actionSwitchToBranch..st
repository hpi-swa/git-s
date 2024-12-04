actions
actionSwitchToBranch: aString
	self activeWorkingCopyAction: [:workingCopy |
		workingCopy actionSwitchToBranch: aString].