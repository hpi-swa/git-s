running
run
	^ (self workingCopy pendingChangesForCherryPick: self commit) commit
		then: [:x | self nextOperation]