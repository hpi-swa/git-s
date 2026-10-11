actions-rebasing
actionRebaseOntoCommit: aCommit interactive: aBoolean
	| commits rebase |
	commits := (GitHistoryWalker new
					excludeAncestorsOf: aCommit;
					yourself) startingFrom: self headCommit.
	rebase := GSRebase newWithWorkingCopy: self commits: commits reversed.
	rebase start then: [:x |
		self
			updateHeadToAndMaterialize: aCommit
			message: 'rebase (start): checkout ', aCommit hexHash.
		aBoolean
			ifTrue: [rebase open]
			ifFalse: [rebase actionRun]].