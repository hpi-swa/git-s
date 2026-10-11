actions-network
actionPullWithRebaseInteractive: aBoolean
	^ self
		actionRebaseOntoCommit: (self unitOfWork objectReferenced: self fetchUpstreamOfCurrentBranch)
		interactive: aBoolean