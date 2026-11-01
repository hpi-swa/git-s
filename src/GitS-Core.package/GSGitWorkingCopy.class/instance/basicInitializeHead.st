initialize-release
basicInitializeHead
	self unitOfWork
		updateRef: self headRefName
		toRef: (self branchName: 'main').
	self tryInitializeHeadFromGitHead.