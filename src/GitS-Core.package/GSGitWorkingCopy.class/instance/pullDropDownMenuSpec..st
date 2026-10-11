actions-network
pullDropDownMenuSpec: aMenuSpec
	| target |
	target := self operationStarter.
	#(
		'Pull (merge)' actionPullWithMerge
		'Pull (rebase)' actionPullWithRebase
		'Pull (interactive rebase)' actionPullWithInteractiveRebase
		'Configure default' actionConfigurePull
	) pairsDo: [:label :selector |
		aMenuSpec add: label target: target selector: selector].