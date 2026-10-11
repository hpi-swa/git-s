actions-network
actionPull
	^ (self unitOfWork shouldPullWithRebase: self currentBranchOrCancel) caseOf: {
		[#interactive] -> [self actionPullWithInteractiveRebase].
		[true] -> [self actionPullWithRebase].
		[false] -> [self actionPullWithMerge]}