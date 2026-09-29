actions-refs
deleteRemoteBranch: aString
	| remoteAndBranch |
	remoteAndBranch := self splitRemoteTrackingBranch: aString.
	self handleCredentialsDuring: [
		self fsgitRepository
			pushToRemote: remoteAndBranch key
			deleteRemoteBranches: {remoteAndBranch value}].