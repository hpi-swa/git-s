remotes
splitRemoteTrackingBranch: aString
	| parts index remoteName remoteRef |
	self assert: (self isRemoteTrackingBranch: aString) description: aString, ' is not a remote-tracking branch'.
	parts := aString allButFirst: self remoteRefDirectory size.
	index := parts indexOf: $/.
	remoteName := parts first: index - 1.
	remoteRef := parts allButFirst: index.
	^ remoteName -> remoteRef