git porcelain
push: aCollectionOfBranchNamesAndAssociations toRemote: remoteName force: forceBoolean
	"self push: { 'master' } toRemote: 'origin'.
	 self push: { 'branch' -> 'remoteBranchName' } toRemote: 'origin'"
	self
		pushToRemote: remoteName
		update: aCollectionOfBranchNamesAndAssociations
		deleteRemoteBranches: #()
		force: forceBoolean