git-operations
currentBranchIfNilInformAnd: aBlock
	| headRef branch |
	headRef := self headRef.
	(headRef isSymbolic and: [
		branch := headRef targetRef.
		self isSqueakBranchRef: branch])
			ifFalse: [self inform: 'Please switch to a branch first.'. ^ aBlock value].
	^ branch