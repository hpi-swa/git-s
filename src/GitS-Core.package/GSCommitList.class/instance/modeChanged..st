updating
modeChanged: aCommitListMode
	aCommitListMode = self activeMode ifTrue: [self recompile].