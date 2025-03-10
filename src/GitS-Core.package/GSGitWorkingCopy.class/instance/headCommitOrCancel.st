head
headCommitOrCancel
	^ self headCommit ifNil: [
		GSGUIUtilities informAndCancel: 'Please create a commit first.']