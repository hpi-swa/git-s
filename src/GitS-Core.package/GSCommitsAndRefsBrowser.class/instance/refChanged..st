updating
refChanged: aGitReference
	self refsChanged.
	self workingCopyOrNil ifNotNil: [:workingCopy |
		aGitReference name = workingCopy headRefName
			ifTrue: [self headChanged: aGitReference]].