actions-working-copy
actionChooseNewRepositoryLocationForActiveProject
	self activeWorkingCopyAction: [:workingCopy |
		workingCopy actionChooseNewRepositoryLocation.
		self everythingChanged].