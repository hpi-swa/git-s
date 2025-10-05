accessing
activeCommit: aCommit
	self
		basicActiveCommit: aCommit;
		changed: #activeCommit.
	self triggerEvent: #activeCommitChanged.