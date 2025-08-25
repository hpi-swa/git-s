generating
synchronousNewCommitsFrom: aSharedQueue2 for: aProcess
	| newCommits |
	newCommits := OrderedCollection new.
	10 timesRepeat: [
		newCommits addAll: aSharedQueue2 gitSConsumeAll.
		newCommits size >= 20 ifTrue: [^ newCommits].
		10 milliSeconds wait].
	^ newCommits