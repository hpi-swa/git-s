accessing
activeCommit
	self activeCommitIndex = 0 ifTrue: [^ nil].
	^ self commits at: self activeCommitIndex