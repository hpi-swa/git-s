remotes
pull: branchString withRebase: configValueString
	self
		configAt: ('branch.{1}.rebase' format: {branchString})
		put: configValueString.