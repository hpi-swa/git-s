actions-network
actionConfigurePull
	| branch |
	branch := self currentBranchOrCancel.
	GSGUIUtilities
		title: 'For which branches do you want to configure the default pull method?'
		chooseOptionFromLabeledBlocks: {
			('The current branch {1} only' format: {(GitReference shortName: branch) printString})
				-> [self unitOfWork pull: branch withRebase: self requestPullRebaseOption].
			'All branches in this repository (unless specified otherwise)'
				-> [self unitOfWork pullAllBranchesWithRebase: self requestPullRebaseOption]}
		cancelLabel: 'Cancel'.