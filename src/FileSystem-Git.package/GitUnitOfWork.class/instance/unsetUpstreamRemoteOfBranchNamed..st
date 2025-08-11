remotes
unsetUpstreamRemoteOfBranchNamed: aString
	GitReference validateReferenceName: aString.
	self configUnsetAt: 'branch.', aString, '.remote'.