running
run
	^ (self workingCopy
		pendingChangesForCherryPick: self commit
		windowTitlePrefix: 'Edit') materialize
			then: [:x | self edit]