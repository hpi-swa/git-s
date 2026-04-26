upstream
checkSetUpstreamForCreatedBranch: aString to: anotherString
	| basename |
	(self isRemoteTrackingBranch: anotherString) ifFalse: [^ self].
	basename := self remoteTrackingBranchBasename: anotherString.
	(((self isBranch: aString) and: [(self branchBasename: aString) = basename])
		or: [(self isExternalBranch: aString) and: [(self externalBranchBasename: aString) = basename]])
			ifFalse: [^ self].
	self
		setUpstreamRemoteNameAndRef: (self splitRemoteTrackingBranch: anotherString)
		for: aString.