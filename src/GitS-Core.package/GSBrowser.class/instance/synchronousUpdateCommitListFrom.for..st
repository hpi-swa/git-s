commit-list
synchronousUpdateCommitListFrom: aSharedQueue2 for: aProcess
	| newCommits |
	newCommits := OrderedCollection new.
	[:break | 10 timesRepeat: [
		newCommits addAll: aSharedQueue2 gitSConsumeAll.
		newCommits size >= 20 ifTrue: [break value].
		10 milliSeconds wait]] valueWithExit.
	newCommits ifNotEmpty: [
		self commitList addAll: newCommits.
		self
			findActiveCommitIdentityIn: newCommits;
			commitListChangedSaveScrollPositions: false].