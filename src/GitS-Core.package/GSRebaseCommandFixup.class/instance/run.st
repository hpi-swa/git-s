running
run
	^ (self workingCopy pendingChanges
		changesForPick: self commit;
		doAmend;
		initialMessage: self message;
		windowTitle: 'Apply fixup ', self commit showOneLine;
		shouldAlwaysOpenDialog: self editMessage;
		alwaysMaterialize;
		yourself) commit
			then: [:x | self nextCommand]