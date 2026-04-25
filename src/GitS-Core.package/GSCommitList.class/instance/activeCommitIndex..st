accessing
activeCommitIndex: anInteger
	self activeCommit: (anInteger = 0 ifTrue: [nil] ifFalse: [self commits at: anInteger]).