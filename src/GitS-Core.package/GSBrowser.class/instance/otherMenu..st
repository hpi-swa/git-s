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
		argumentList: {};
		
		add: 'Force push'
		target: self
		selector: #actionForcePush
		argumentList: {}.