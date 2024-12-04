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
		
	self activeWorkingCopy ifNotNil: [:workingCopy |
		aMenuSpec
			addLine;
			
			add: 'Force push'
			target: workingCopy
			selector: #actionForcePush
			argumentList: {}].