menu
otherMenu: aMenuSpec
	| target |
	target := self operationStarter.
	aMenuSpec
		add: 'Self-update'
		target: target
		selector: #actionSelfUpdate
		argumentList: {};
		
		add: 'Set self-update branch'
		target: target
		selector: #actionSetSelfUpdateBranch
		argumentList: {}.