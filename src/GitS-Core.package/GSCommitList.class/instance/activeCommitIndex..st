accessing
activeCommitIndex: anInteger
	activeCommitIndex := anInteger.
	self
		changed: #activeCommitIndex;
		changed: #activeCommit;
		triggerEvent: #activeCommitChanged.