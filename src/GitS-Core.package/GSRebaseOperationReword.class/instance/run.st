running
run
	^ ((self workingCopy
		pendingChangesForCherryPick: self commit
		windowTitlePrefix: 'Reword ')
			alwaysOpenDialog;
			yourself) commit
		then: [:x | self nextOperation]