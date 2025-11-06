menu
otherMenu: aMenuSpec
	| target |
	target := self operationLifecycle.
	aMenuSpec
		add: 'Self-update'
		target: target
		selector: #actionSelfUpdate
		argumentList: {};
		
		add: 'Set self-update branch'
		target: target
		selector: #actionSetSelfUpdateBranch
		argumentList: {}.
		
	self activeWorkingCopy ifNotNil: [:workingCopy |
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