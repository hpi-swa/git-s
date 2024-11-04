requests
requestBranchName
	^ UIManager default
		request: 'New self-update branch:'
		initialAnswer: self branchName