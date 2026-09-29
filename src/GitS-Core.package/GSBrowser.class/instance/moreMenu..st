menu
moreMenu: aMenuSpec
	| target |
	target := self operationStarter.
	aMenuSpec
		add: 'Self-update'
		target: target
		selector: #actionSelfUpdate;
		
		add: 'Set self-update branch'
		target: target
		selector: #actionSetSelfUpdateBranch.