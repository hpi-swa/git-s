remotes
unsetUpstreamRefOfBranchNamed: aString
	GitReference validateReferenceName: aString.
	self configUnsetAt: 'branch.', aString, '.merge'.