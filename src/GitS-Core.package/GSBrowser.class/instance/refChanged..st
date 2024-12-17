updating
refChanged: aGitReference
	self refsChanged.
	self activeWorkingCopy ifNotNil: [
		aGitReference name = self activeWorkingCopy headRefName
			ifTrue: [self headChanged: aGitReference]].