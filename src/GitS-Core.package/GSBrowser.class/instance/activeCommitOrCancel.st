accessing
activeCommitOrCancel
	^ self activeCommit ifNil: [GSGUIUtilities informAndCancel: 'Please select a commit first.']