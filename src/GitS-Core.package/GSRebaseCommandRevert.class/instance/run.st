running
run
	^ (self workingCopy pendingChangesForRevert: self commit) commit
		then: [:x | self nextCommand]