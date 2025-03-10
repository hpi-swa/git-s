actions
actionSetSelfUpdateBranch
	GSSelfUpdater requestAndSetBranchName.
	(self confirm: 'Do you want to self-update noẁ') ifFalse: [^ self].
	self actionSelfUpdate.