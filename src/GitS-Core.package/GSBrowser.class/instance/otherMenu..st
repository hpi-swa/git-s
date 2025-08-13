menu
otherMenu: aMenuSpec
	aMenuSpec
		add: 'Self-update'
		target: self
		selector: #actionSelfUpdate
		argumentList: {};
		
		add: 'Set self-update branch'
		target: self
		selector: #actionSetSelfUpdateBranch
		argumentList: {}.
		
	self activeWorkingCopy ifNotNil: [:workingCopy | | target |
		target := workingCopy operationLifecycle.
		aMenuSpec
			addLine;
			
			add: 'Commit (amend)'
			target: target
			selector: #actionCommitAmend
			argumentList: #();
			
			add: 'Force push'
			target: target
			selector: #actionForcePush
			argumentList: #()].