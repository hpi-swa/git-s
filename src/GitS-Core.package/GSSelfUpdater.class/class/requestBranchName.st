requests
requestBranchName
	^ GSGUIUtilities
		request: 'New self-update branch:'
		initialAnswer: self branchName