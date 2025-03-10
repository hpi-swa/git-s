accessing
activeCommitAction: aBlock
	self activeWorkingCopyAction: [:workingCopy |
		self activeCommit ifNil: [
			GSGUIUtilities informAndCancel: 'Please select a commit first.'].
		aBlock value: workingCopy value: self activeCommit].