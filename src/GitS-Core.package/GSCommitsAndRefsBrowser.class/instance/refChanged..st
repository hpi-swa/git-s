updating
refChanged: aGitReference
	self refsChanged.
	self workingCopyOrNil ifNotNil: [
		aGitReference name = self workingCopyOrNil headRefName
			ifTrue: [self headChanged: aGitReference]].