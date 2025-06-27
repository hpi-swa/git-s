actions-branches
actionCreateBranchAtCommitAndOptionallySwitchToIt: aCommit
	| branch |
	branch := self actionCreateBranchAtCommit: aCommit.
	(self confirm: ('New branch {1} created. Do you want to switch to it?'
						gitSFormat: {(GitReference shortName: branch) printString}))
		ifFalse: [^ self].
	self actionSwitchToBranch: branch.