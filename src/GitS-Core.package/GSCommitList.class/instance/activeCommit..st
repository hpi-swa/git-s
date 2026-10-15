accessing
activeCommit: aCommit
	activeCommit := aCommit.
	self
		changed: #activeCommit;
		changed: #activeCommitIndex;
		changed: #statusText.