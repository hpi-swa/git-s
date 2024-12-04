actions-rebasing
actionRebaseOntoCommit: aCommit
	| commits rebase |
	commits := (GitHistoryWalker new
					excludeAncestorsOf: aCommit;
					yourself) startingFrom: self headCommit.
	rebase := GSRebase newWithWorkingCopy: self commits: commits reversed.
	rebase start then: [:x |
		self
			updateHeadToAndMaterialize: aCommit
			message: 'rebase (start): checkout ', aCommit hexHash.
		rebase open].