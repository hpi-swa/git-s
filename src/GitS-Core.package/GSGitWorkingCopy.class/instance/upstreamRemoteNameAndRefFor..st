upstream
upstreamRemoteNameAndRefFor: aString
	(self isBranch: aString) ifTrue: [^ self upstreamRemoteNameAndRefForBranch: aString].
	^ self suggestOrRequestAndRememberRemoteNameAndRefFor: aString