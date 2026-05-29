upstream
upstreamRemoteNameAndRefForBranch: aString
	^ (self basicUpstreamRemoteNameAndRefForBranch: aString)
		ifNil: [self suggestOrRequestAndRememberRemoteNameAndRefFor: aString]