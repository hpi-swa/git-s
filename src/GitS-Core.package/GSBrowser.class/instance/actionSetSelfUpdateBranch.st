actions
actionSetSelfUpdateBranch
	GSSelfUpdater requestAndSetBranchName ifFalse: [^ self].
	(self confirm: 'Do you want to self-update noẁ') ifFalse: [^ self].
	self actionSelfUpdate.