git-operations
updateSymbolicHeadToRef: aString
	self unitOfWork
		updateSymbolicRef: self headRefName
		toRef: aString
		message: (self checkoutReflogMessageTo: aString).