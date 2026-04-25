accessing
activeCommit: aCommit
	self activeCommitIndex: (aCommit ifNil: [0] ifNotNil: [self commits indexOf: aCommit]).