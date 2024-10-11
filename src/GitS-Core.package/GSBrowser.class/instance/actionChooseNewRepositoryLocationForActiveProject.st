actions
actionChooseNewRepositoryLocationForActiveProject
	self activeWorkingCopyAction: [:workingCopy |
		workingCopy requestAndMoveToNewRepositoryLocation.
		self everythingChanged].