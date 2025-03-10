git-operations
currentBranchOrCancel
	| headRef branch |
	headRef := self headRef.
	(headRef isSymbolic and: [
		branch := headRef targetRef.
		self isSqueakBranchRef: branch])
			ifFalse: [GSGUIUtilities informAndCancel: 'Please switch to a branch first.'].
	^ branch