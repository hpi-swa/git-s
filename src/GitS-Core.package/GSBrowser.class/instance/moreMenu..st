menu
moreMenu: aMenuSpec
	| target |
	target := self operationStarter.
	aMenuSpec
		add: 'Help...'
		target: GSHelp
		selector: #open;
		
		addLine;
		
		add: 'Self-update'
		target: target
		selector: #actionSelfUpdate;
		
		add: 'Set self-update branch'
		target: target
		selector: #actionSetSelfUpdateBranch;
		
		add: 'Preview change log for latest version'
		target: target
		selector: #actionPreviewChangeLogForLatestVersion;
		
		addLine;
		
		add: 'Change full name for commit metadata'
		target: GitStampNameRequest new
		selector: #defaultAction;
		
		add: 'Change email for commit metadata'
		target: GitStampEmailRequest new
		selector: #defaultAction.