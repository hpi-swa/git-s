remotes
pullAllBranchesWithRebase: configValueString
	self configAt: 'pull.rebase' put: configValueString.