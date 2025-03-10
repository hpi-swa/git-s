actions-comparing
chooseCommitParent: aCommit
	| parents |
	parents := aCommit parents.
	parents ifEmpty: [^ nil].
	parents size = 1 ifTrue: [^ parents first].
	^ GSGUIUtilities
		chooseFromValues: parents
		label: [:commit | self displayName: commit]
		title: ('{1} has multiple parents. Please choose one:' format: {self displayName: aCommit})