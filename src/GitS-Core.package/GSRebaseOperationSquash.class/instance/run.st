running
run
	^ ((self workingCopy pendingChangesForSquash: self commit)
		shouldAlwaysOpenDialog: self editMessage;
		yourself) commit
			then: [:x | self nextOperation]