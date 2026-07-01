actions-branches
actionCreateBranchAtActiveCommitAndOptionallySwitchToIt
	| workingCopy |
	workingCopy := self activeWorkingCopyOrCancel.
	workingCopy actionCreateBranchAtCommitAndOptionallySwitchToIt: self activeCommitOrCancel.