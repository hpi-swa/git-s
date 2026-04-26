upstream
suggestOrRequestAndRememberRemoteNameAndRefFor: aString
	| remoteNameAndRef |
	remoteNameAndRef := self suggestOrRequestRemoteNameAndRefFor: aString.
	self setUpstreamRemoteNameAndRef: remoteNameAndRef for: aString.
	^ remoteNameAndRef