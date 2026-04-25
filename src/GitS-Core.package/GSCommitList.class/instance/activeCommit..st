accessing
activeCommit: aCommit
	activeCommit := aCommit.
	self
		changed: #activeCommit;
		changed: #activeCommitIndex;
		triggerEvent: #activeCommitChanged.