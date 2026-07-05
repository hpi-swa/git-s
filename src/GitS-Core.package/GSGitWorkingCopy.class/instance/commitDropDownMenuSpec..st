actions-committing
commitDropDownMenuSpec: aMenuSpec
	aMenuSpec
		add: 'Commit (amend)'
		target: self operationStarter
		selector: #actionCommitAmend.