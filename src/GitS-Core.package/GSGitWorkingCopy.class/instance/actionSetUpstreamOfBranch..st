actions-network
actionSetUpstreamOfBranch: aString
	self 
		setUpstreamRemoteNameAndRef: (self requestRemoteNameAndRefFor: aString)
		for: aString.