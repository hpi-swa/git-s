accessing
activeCommitAction: aBlock
	self activeWorkingCopyAction: [:workingCopy |
		self activeCommit ifNil: [
			self inform: 'Please select a commit first.'.
			^ self].
		aBlock value: workingCopy value: self activeCommit].