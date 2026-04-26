upstream
suggestOrRequestRemoteNameAndRefFor: aString
	| |
	self suggestRemoteNameAndRefFor: aString ifAccepted: [:pair | ^ pair].
	^ self requestRemoteNameAndRefFor: aString