initialize-release
initializeHead
	self unitOfWork
		updateRef: self headRefName
		toRef: (self branchName: 'main').